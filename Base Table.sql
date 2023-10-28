-----------------------
-- Membuat base table--
-----------------------
CREATE TABLE base_table (
	SELECT
		pj.id_distributor, pj.id_cabang, pj.id_invoice, 
		pj.tanggal, pj.id_customer, pj.id_barang, 
		pj.jumlah_barang, pj.unit, pj.harga, 
		pj.mata_uang, pj.brand_id, pj.lini,
		pl.level, pl.nama, pl.id_cabang_sales,
		pl.cabang_sales, pl.id_group, pl.group,
		b.sektor, b.nama_barang, b.tipe,  
		b.nama_tipe, b.kode_lini, b.kemasan 
	FROM penjualan pj
		LEFT JOIN barang b 
			ON pj.id_barang = b.kode_barang
		LEFT JOIN pelanggan pl 
			ON pj.id_customer = pl.id_customer
);

-- Menentukan primary key

ALTER TABLE base_table ADD PRIMARY KEY (id_invoice);