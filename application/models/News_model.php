<?php

class News_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function get_articles($slug = false) {


        if ($slug === FALSE) {
            $this->db->select('news.id,news.title,news.text,news.created_at,news.slug,categories.id,categories.titre');
            $this->db->from('news');
            $this->db->join('categories', 'news.category_id = categories.id');
            $query = $this->db->get();
            $articles = $query->result_array();
            //echo '<pre>';var_dump($articles);die();
            return $articles;
        }
        $this->db->select('*');
        $this->db->from('news');
        $this->db->join('categories','news.category_id = categories.id');
        $this->db->where('slug', $slug);
        $query = $this->db->get()->row_array();
        return $query;
    }

    public function addArticle() {
        $data = array(
            'title' => $this->input->post('title'),
            'text' => $this->input->post('text'),
            'slug' => url_title($this->input->post('title'), 'dash', true),
            'category_id' => $this->input->post('category'),
            'created_at' => date('Y-m-d H:i:s')
        );

        $this->db->insert('news', $data);
    }

}
