<?php
class News extends CI_Controller{
    
    public function __construct() {
        parent::__construct();
        $this->load->model('news_model');
    }
    
    public function index() {
        $data['articles'] = $this->news_model->get_articles();
        $data['title'] = 'Liste des articles';
        //var_dump($data);die();
        $this->load->view('templates/header',$data);
        $this->load->view('articles/index',$data);
        $this->load->view('templates/footer');

    }
    
    public function view($slug = null) {
        $data['article'] = $this->news_model->get_articles($slug);
        $data['title'] = $data['article']['title'];
        
        $this->load->view('templates/header',$data);
        $this->load->view('articles/view',$data);
        $this->load->view('templates/footer');
    }
}