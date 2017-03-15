<?php

class News extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model(array('news_model', 'category_model'));
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
        //echo '<pre>';var_dump($data['article']['category_id']);die();
        $data['title'] = $data['article']['title'];
        $data['category'] = $this->category_model->getCategories($data['article']['category_id']);
        $this->load->view('templates/header', $data);
        $this->load->view('articles/view', $data);
        $this->load->view('templates/footer');
    }

    public function add() {
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('text', 'Text', 'required');
        $data['title'] = 'Nouvel article';
        $data['categories'] = $this->category_model->getCategories();
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header', $data);
            $this->load->view('articles/add', $data);
            $this->load->view('templates/footer');
        } else {
            $this->news_model->addArticle();
            $this->session->set_flashdata('message', 'Article ajouté avec succés');
            redirect('/');
        }
    }

}
