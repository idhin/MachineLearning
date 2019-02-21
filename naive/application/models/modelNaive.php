<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelNaive extends CI_Model{
	public function Nspesies(){
		$this->db->select("spesies,count(dataset_order) as jumlah,sum(petal_length) as sumpetal_legth,sum(petal_width) as sumpetal_width,sum(
							petal_length*petal_length) as powpetal_length,sum(petal_width*petal_width) as powpetal_width");
		$this->db->from("dataset");
		$this->db->group_by("spesies");
		$sql=$this->db->get();
		return $sql->result();
	}

	public function SumPetal(){
		$this->db->select("sum(petal_length) as sum_length,sum(petal_width) as sum_width,sum(petal_length*petal_length) as sum_length_pow,sum(petal_width*petal_width) as sum_width_pow");
		$this->db->from("dataset");
		$sql=$this->db->get();
		return $sql;
	}

	public function getDataTest(){
		$this->db->select("*");
		$this->db->from("datatrain");
		$sql=$this->db->get();
		return $sql->result();
	}
}