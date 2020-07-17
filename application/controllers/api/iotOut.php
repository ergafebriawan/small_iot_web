<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class iotOut extends REST_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('iotOut_model', 'data');
    }

    public function index_get(){
        $id = $this->get('id');
        if($id === null){
            $iot = $this->data->getIOT_out();
        }else{
            $iot = $this->data->getIOT_out()($id);
        }
        
        if($iot){
            $this->response($iot, REST_Controller::HTTP_OK);
        }else{
            $this->response(['message' => 'id not found'], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function index_put(){
        $id = $this->put('id_data');
        $data = [
            'id_data' => $this->put('id_data'),
            'nama_data' => $this->put('nama_data'),
            'value_data' => $this->put('value_data'),
        ];

        if($this->data->updateIOT_out($data, $id) > 0){
            $this->response([
                'message' => 'data updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        }else{
            $this->response([
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}

?>