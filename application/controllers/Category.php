<?php

class Category extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('category_model');
        $this->load->library(array('form_validation'));
        $this->load->helper('form');
    }
    
    public function add() {
        $this->form_validation->set_rules('titre','Titre','required');
        if($this->form_validation->run()=== FALSE)
        {
            $data['title'] = 'Nouvelle categorie';
            $this->load->view('templates/header',$data);
            $this->load->view('category/add');
            $this->load->view('templates/footer');
        }
        else{
            $this->category_model->add();
            $this->session->set_flashdata('message','Categorie ajouté avec succés');
            redirect('/');
        }
    }

}
