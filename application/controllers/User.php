<?php

class User extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library(array('form_validation'));
        $this->load->helper('form');
    }

    public function register() {
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('adresse', 'Adresse', 'required');
        $this->form_validation->set_rules('condition', 'Condition', 'required');
        $data['title'] = 'Création de compte';
        if ($this->form_validation->run() === false) {
            $email = strtolower($this->input->post('email'));
            $password = $this->input->post('password');
            $data['message']=$this->session->set_flashdata('message', $this->ion_auth->messages());
            $this->load->view('templates/header',$data);
            $this->load->view('user/register',$data);
            $this->load->view('templates/footer');
            
        } else {
            $data['message'] = 'Utilisateur enregistré';
            $username = 'test';
            $email = $this->input->post('email');
            $password =  $this->input->post('password');
            $adresse = $this->input->post('adresse');
            $this->ion_auth->register($adresse,$username,$password,$email);
            $this->session->set_flashdata('message','Compte enregistré');
            $this->load->view('templates/header',$data);
            $this->load->view('user/register',$data);
            $this->load->view('templates/footer');
        }
    }

}
