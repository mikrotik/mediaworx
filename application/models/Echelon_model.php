<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Echelon_model extends CRM_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function get($id="")
    {
        if (is_numeric($id)){

            $this->db->where('id', $id);
            $category = $this->db->get('tblechelon')->row();
            return $category;

        }

        return $this->db->get('tblechelon')->result_array();
    }

    public function get_patterns($id = ''){

        if (is_numeric($id)) {
            $this->db->where('categoryid',$id);
            $patterns = $this->db->get('tblecheloncategorypatterns')->result_array();
            return $patterns;
        }

        return false;
    }

    public function get_pattern($id = ''){

        $patternData = array();

        if (is_numeric($id)) {
            $this->db->where('id',$id);
            $pattern = $this->db->get('tblecheloncategorypatterns')->row();

            $this->db->where('patternid',$id);
            $responses = $this->db->get('tblecheloncategoryresponses')->result_array();

            $patternData = array(
                "pattern"=>$pattern,
                "responses"=>$responses
            );

            return $patternData;

        }

        return false;
    }

    public function get_responses($id = ''){

        if (is_numeric($id)) {
            $this->db->where('categoryid',$id);
            $responses = $this->db->get('tblecheloncategoryresponses')->result_array();
            return $responses;
        }

        return false;
    }

    public function add($data=array())
    {
        if ($data){

            $this->db->insert('tblechelon',$data);
            $id = $this->db->insert_id();

            if ($this->db->affected_rows() > 0) {

                return $id;
            }

        }

        return false;
    }

    public function update($data=array(),$id)
    {

        if (is_numeric($id))
        {

            $this->db->where('categoryid',$id);
            $this->db->delete('tblecheloncategorypatterns');

            $this->db->where('categoryid',$id);
            $this->db->delete('tblecheloncategoryresponses');


            unset($data['response']);
            unset($data['pattern']);


            $this->db->where('id', $id);
            $this->db->update('tblechelon', $data);

            if ($this->db->affected_rows() > 0) {

                return true;
            }

            return false;
        }

        return false;

    }

    public function add_pattern($id,$data=array())
    {
        if ($data){



            if(!empty($data["patternid"])){

                $this->db->where("id",$data["patternid"]);
                $this->db->delete("tblecheloncategorypatterns");

                $this->db->where("patternid",$data["patternid"]);
                $this->db->delete("tblecheloncategoryresponses");

            }

            unset($data["patternid"]);

            if (!empty($data["pattern"])){
                $pattern = $data["pattern"];
                unset($data["pattern"]);
            }

            if (!empty($data["responses"])){
                $responses = $data["responses"];
                unset($data["responses"]);
            }

            unset($data["response"]);

            if ($pattern)
            {
                $patternData = array(
                    "categoryid"=>$id,
                    "pattern"=>$pattern
                );
                $this->db->insert("tblecheloncategorypatterns",$patternData);
                $patternid = $this->db->insert_id();
            }

            if ($patternid && $responses)
            {

                foreach ($responses as $response)
                {
                    $responseData = array(
                        "categoryid"=>$id,
                        "patternid"=>$patternid,
                        "response"=>$response["response"]
                    );

                    $this->db->insert("tblecheloncategoryresponses",$responseData);
                }

            }

            if ($this->db->affected_rows() > 0) {

                return array(
                    "id"=>$patternid,
                    "pattern"=>$pattern
                );
            }

        }

        return false;
    }

    public function delete($id)
    {
        if (is_numeric($id))
        {

            /** Delete all category related information */

            $this->db->where('id',$id);
            $this->db->delete('tblechelon');

            $this->db->where('categoryid',$id);
            $this->db->delete('tblecheloncategorypatterns');

            /** Delete Category */
            $this->db->where('categoryid',$id);
            $this->db->delete('tblecheloncategoryresponses');

            if($this->db->affected_rows() > 0){
                logActivity('Category Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }

    public function remove_pattern($id)
    {
        if (is_numeric($id))
        {

            $this->db->where('id',$id);
            $this->db->delete('tblecheloncategorypatterns');

            /** Delete Category */
            $this->db->where('patternid',$id);
            $this->db->delete('tblecheloncategoryresponses');

            if($this->db->affected_rows() > 0){
                logActivity('Pattern Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }

    public function remove_response($id)
    {
        if (is_numeric($id))
        {

            $this->db->where('id',$id);
            $this->db->delete('tblecheloncategoryresponses');

            if($this->db->affected_rows() > 0){
                logActivity('Response Delete [ID:'.$id.']');

                return true;
            }

            return false;

        }

        return false;
    }
}