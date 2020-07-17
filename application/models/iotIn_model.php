<?php

class iotIn_model extends CI_Model{
    public function getIOT_in($id = null){
        if($id === null){
            return $this->db->get('dataIn')->result_array();
        }else{
            return $this->db->get_where('dataIn',['id_data' => $id])->row_array();
        }
    }

    public function updateIOT_in($data, $id){
        $this->db->update('dataIn', $data, ['id_data' => $id]);
        return $this->db->affected_rows();
    }

}

?>