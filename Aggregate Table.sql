CREATE TABLE aggregate_table (
SELECT
	EXTRACT(MONTH FROM tanggal) bulan_ke,
    MONTHNAME(tanggal) bulan,
    cabang_sales,
    bt.group,
    nama nama_customer,
    lini,
    SUM(jumlah_barang * harga) total_harga
FROM base_table bt
GROUP BY 1,2,3,4,5,6
ORDER BY 1)