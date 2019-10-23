<?php
class Toko extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url();
            redirect($url);
        };
		$this->load->model('m_toko');
	}
	function index(){
	if($this->session->userdata('akses')=='1'){
		$data['data']=$this->m_toko->get_toko();
		$this->load->view('admin/v_toko',$data);
	}else{
        echo "Halaman tidak ditemukan";
    }
	}

	function tambah_toko(){
	if($this->session->userdata('akses')=='1'){
		$toko_nama=$this->input->post('toko_nama');
		$toko_alamat=$this->input->post('toko_alamat');
		$toko_nohp=$this->input->post('toko_nohp');
		$toko_kota=$this->input->post('toko_kota');
		$this->m_toko->simpan_toko($toko_nama,$toko_alamat,$toko_nohp, $toko_kota);
		echo $this->session->set_flashdata('msg','<label class="label label-success">Informasi Toko Berhasil disimpan</label>');
		redirect('admin/toko');
	}else{
        echo "Halaman tidak ditemukan";
    }
	}

	function edit_toko(){
	if($this->session->userdata('akses')=='1'){
		$toko_id=$this->input->post('toko_id');
		$toko_nama=$this->input->post('toko_nama');
		$toko_alamat=$this->input->post('toko_alamat');
		$toko_nohp=$this->input->post('toko_nohp');
		$toko_kota=$this->input->post('toko_kota');
		$this->m_toko->update_toko($toko_id,$toko_nama,$toko_alamat,$toko_nohp, $toko_kota);
		echo $this->session->set_flashdata('msg','<label class="label label-success">Informasi Toko Berhasil diperbarui</label>');
		redirect('admin/toko');
	}else{
        echo "Halaman tidak ditemukan";
    }
	}
	// function nonaktifkan(){
	// if($this->session->userdata('akses')=='1'){
	// 	$kode=$this->input->post('kode');
	// 	$this->m_pengguna->update_status($kode);
	// 	redirect('admin/pengguna');
	// }else{
  //       echo "Halaman tidak ditemukan";
  //   }
	// }
}
