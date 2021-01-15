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
			'ph'   => $data['ph'],
			'ldr'  => $data['ldr'],
			'ppm'  => $data['ppm'],
			'ec'   => $data['ec'],
			'suhu' => $data['suhu'],
		];

		header('Content-Type: application/json');
    	echo json_encode( $result );
	}

	public function kirim()
	{
		$data = array(
			'ph'    => $this->input->get('sensor1'),
			'ldr'   => $this->input->get('sensor2'),
			'ppm'   => $this->input->get('sensor3'),
			'ec'    => $this->input->get('sensor4'),
			'suhu'  => $this->input->get('sensor5'),
			'waktu' => date("Y-m-d H:i:s"),
		);

		$this->db->insert('tb_monitoring', $data);
	}

}
