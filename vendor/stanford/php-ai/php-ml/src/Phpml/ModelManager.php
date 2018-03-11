<?php

declare(strict_types=1);

namespace Phpml;

use Phpml\Exception\FileException;
use Phpml\Exception\SerializeException;

class ModelManager
{
    public function saveToFile(Estimator $estimator, string $filepath, array $transformers): void
    {
        if (!is_writable(dirname($filepath))) {
            throw FileException::cantSaveFile(basename($filepath));
        }

        $serialized = serialize($estimator);
        if (empty($serialized)) {
            throw SerializeException::cantSerialize(gettype($estimator));
        }

        $serializedTransformers = array_map(function($transformer) {
            $serializedTransformer = serialize($transformer);
            if (empty($serialized)) {
                throw SerializeException::cantSerialize(gettype($transformer));
            }
            return $serializedTransformer;
        }, $transformers);

        if ($serializedTransformers) {
            $serialized = json_encode(array(
                'estimator' => $serialized,
                'transformers' => $serializedTransformers
            ));
        }

        $result = file_put_contents($filepath, $serialized, LOCK_EX);
        if ($result === false) {
            throw FileException::cantSaveFile(basename($filepath));
        }
    }

    public function restoreFromFile(string $filepath)
    {
        if (!file_exists($filepath) || !is_readable($filepath)) {
            throw FileException::cantOpenFile(basename($filepath));
        }

        $content = file_get_contents($filepath);
        $serializedElements = json_decode($content);
        if (is_null($serializedElements)) {
            // Just an estimator was saved.
            $object = unserialize($content);

        } else {
            // Unserialize both the estimator and the attached transformers.
            $object = unserialize($serializedElements['estimator']);
            $transformers = array_map(function($serializedTransformer) {
                $transformer = unserialize($serializedTransformer);
                if ($transformer === false) {
                    throw SerializeException::cantUnserialize(basename($filepath));
                }
                return $transformer;
            }, $serializedElements['transformers']);
        }

        if ($object === false) {
            throw SerializeException::cantUnserialize(basename($filepath));
        }

        if (empty($transformers)) {
            return $object;
        }

        return array($object, $transformers);
    }
}