<?php
class M_toko extends CI_Model{
	function get_toko(){
		$hsl=$this->db->query("SELECT * FROM tbl_toko");
		return $hsl;
	}
	function simpan_toko($toko_nama,$toko_alamat,$toko_nohp,$toko_kota){
		$hsl=$this->db->query("INSERT INTO tbl_toko(toko_nama,toko_alamat,toko_nohp,toko_kota) VALUES (
			'$toko_nama','$toko_alamat','$toko_nohp','$toko_kota')");
		return $hsl;
	}
	function update_toko($toko_id,$toko_nama,$toko_alamat,$toko_nohp,$toko_kota){
		$hsl=$this->db->query("UPDATE tbl_toko SET toko_nama='$toko_nama',toko_alamat='$toko_alamat',
			toko_nohp='$toko_nohp',toko_kota='$toko_kota' WHERE toko_id='$toko_id'");
		return $hsl;
	}
}
