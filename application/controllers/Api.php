<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Api extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
	}

	public function index()
	{

	}

	public function admin()
	{
		$data = $this->db
			->order_by('id_m', 'DESC')
			->get('tb_monitoring', 1)
			->row_array();

		$result = [
			'ph'  => $data['ph'],
			'ldr' => $data['ldr'],
			'ppm' => $data['ppm'],
			'ec'  => $data['ec'],
			'suhu' => $data['suhu'],
		];

		header('Content-Type: application/json');
    	echo json_encode( $result );
	}

}
