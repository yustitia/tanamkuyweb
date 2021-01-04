<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
	public function index()
	{
		$this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('login');
        } else {
            $user = $this->input->post('username');
            $kata = $this->input->post('password');
            

            $cek = $this->db->get_where('pengguna', ['id_pengguna' => $user])->row_array();

            if ($cek) {
                if ($cek['status'] == 1) {
                    if (password_verify($kata,$cek['password'])) {

                        $data_session = array(
                            'id_pengguna' => $cek['id_pengguna'],
                            'role_id' => $cek['role_id']
                        );
                        $this->session->set_userdata($data_session);

                        if ($cek['role_id'] == 'admin') {
                            redirect('admin');
                        } else {
                            redirect('petani');
                        }
                    } else {
                        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                         Maaf password anda salah !
                        </div>');
                        redirect('login');
                    }
                } else {
                    $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                     Gagal login akun sudah tidak aktif
                    </div>');
                    redirect('login');
                }
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                Gagal login silahkan cek kembali ID atau password anda !
                </div>');
                redirect('login');
            }

        }
        
	}
}
