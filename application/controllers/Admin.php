<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('m_data');
	}

	public function index()
	{
		$data['tittle'] = 'My Dasbord';
		$data['pengguna'] = $this->db->get_where('pengguna', ['id_pengguna' => $this->session->userdata('id_pengguna')])->row_array();
		$data['nilai'] = $this->db->get('tb_monitoring')->row_array();
		$this->load->view('pengguna/header', $data);
		$this->load->view('pengguna/sidebar', $data);
		$this->load->view('pengguna/topbar', $data);
		$this->load->view('pengguna/admin', $data);
		$this->load->view('pengguna/footer', $data);
	}

	public function profile()
	{
		$data['tittle'] = 'My profile';
		$data['pengguna'] = $this->db->get_where('pengguna', ['id_pengguna' => $this->session->userdata('id_pengguna')])->row_array();
		$this->load->view('pengguna/header', $data);
		$this->load->view('pengguna/sidebar', $data);
		$this->load->view('pengguna/topbar', $data);
		$this->load->view('pengguna/profil', $data);
		$this->load->view('pengguna/footer');
	}

	public function sensor()
	{
		$this->load->view('pengirim/index');
	}




	//untuk keluar dari halaman
	public function keluar()
	{
		$this->session->unset_userdata('id_pengguna');
		$this->session->unset_userdata('role_data');

		$this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
       jangan lupa datang lagi :)
        </div>');

		redirect('login');
	}
}
