<?php

class Home extends CI_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('iotIn_model');
        $this->load->model('iotOut_model');
    }

    public function index(){
        $dataIn['iot_in'] = $this->iotIn_model->getIOT_in(1);
        $dataOut['iot_out'] = $this->iotOut_model->getIOT_out(1);
        $this->load->view('template/header');
        $this->load->view('home/sensor', $dataIn);
        $this->load->view('home/control', $dataOut);
        $this->load->view('template/footer');
    }
}