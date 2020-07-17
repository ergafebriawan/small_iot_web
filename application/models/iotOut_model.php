<?php

class iotOut_model extends CI_Model{
    public function getIOT_out($id = null){
        if($id === null){
            return $this->db->get('dataOut')->result_array();
        }else{
            return $this->db->get_where('dataOut',['id_data' => $id])->row_array();
        }
    }

    public function updateIOT_out($data, $id){
        $this->db->update('dataOut', $data, ['id_data' => $id]);
        return $this->db->affected_rows();
    }
}

?>