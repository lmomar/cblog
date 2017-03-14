<?php
class News_model extends CI_Model{
    
    public function __construct() {
        $this->load->database();
    }
    
    public function get_articles($slug = false){
        
        if($slug === FALSE)
        {
            $query = $this->db->get('news');
            $articles= $query->result_array();
            return $articles;
        }
        $query = $this->db->get_where('news',array('slug' => $slug));
        return $query->row_array();
    }
    
    public function addArticle() {
        $data = array(
            'title' => $this->input->post('title'),
            'text' => $this->input->post('text'),
            'slug' => url_title($this->input->post('title'),'dash',true)
        );

        $this->db->insert('news',$data);
    }
}

