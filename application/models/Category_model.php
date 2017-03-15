<?php

class Category_model extends CI_Model {

    public function __construct() {
        $this->load->database();
        $this->load->helper('date');
    }

    public function add() {
        $data = array(
        'titre' => $this->input->post('titre'),
        'created_at' => date('Y-m-d H:i:s')
        );
        $this->db->insert('categories',$data);
    }

    public function getCategories($cat = false) {
        if($cat === FALSE)
        {
            $this->db->select('id,titre');
            $this->db->from('categories');
            $query = $this->db->get();
            return $query->result_array();
        }
        else{
            $query = $this->db->get_where('categories',array('id' => $cat));
            return $query->row_array();
        }
    }
}
