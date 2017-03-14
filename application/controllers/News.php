<?php

class News extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('news_model');
        $this->load->library('form_validation');
    }

    public function index() {
        $data['articles'] = $this->news_model->get_articles();
        $data['title'] = 'Liste des articles';
        //var_dump($data);die();
        $this->load->view('templates/header', $data);
        $this->load->view('articles/index', $data);
        $this->load->view('templates/footer');
    }

    public function view($slug = null) {
        $data['article'] = $this->news_model->get_articles($slug);
        $data['title'] = $data['article']['title'];

        $this->load->view('templates/header', $data);
        $this->load->view('articles/view', $data);
        $this->load->view('templates/footer');
    }

    public function add() {
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('text', 'Text', 'required');
        $data['title'] = 'Nouvel article';
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header', $data);
            $this->load->view('articles/add', $data);
            $this->load->view('templates/footer');
        }
        else{
            $this->news_model->addArticle();
            $this->session->set_flashdata('message','Article ajouté avec succés');
            redirect('/');
        }
    }

}
