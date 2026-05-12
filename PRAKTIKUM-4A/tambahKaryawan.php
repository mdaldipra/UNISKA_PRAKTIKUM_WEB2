<!doctype html>
<html lang="en">

<?php
$hariini = strtotime(date('Y-m-d'));
$maxtua = date('Y-m-d', strtotime('-45 year', $hariini));
$mintua = date('Y-m-d', strtotime('-17 year', $hariini));
?>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tambah Data Karyawan</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
    crossorigin="anonymous"></script>
</head>

<body>
  <div class="container">
    <div class="card mt-3">
      <div class="card-header">
        <h1>Tambah Data Karyawan</h1>
        <hr>
        <a href="karyawan.php" class="btn btn-secondary">
          <i class="bi bi-arrow-left"></i> Kembali
        </a>
      </div>

      <div class="card-body">
        <form action="insertKaryawan.php" method="post">

          <div class="mb-3">
            <label for="nama" class="form-label">Nama</label>
            <input type="text" class="form-control" name="nama" id="nama" required>
          </div>

          <div class="mb-3">
            <label for="alamat" class="form-label">Alamat</label>
            <input type="text" class="form-control" name="alamat" id="alamat" required>
          </div>

          <div class="mb-3">
            <label for="tempat_lahir" class="form-label">Tempat Lahir</label>
            <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" required>
          </div>

          <div class="mb-3">
            <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
            <input type="date" class="form-control" name="tanggal_lahir" id="tanggal_lahir"
              min="<?= $maxtua; ?>" max="<?= $mintua; ?>" required>
            <small class="text-muted">
              Usia karyawan harus minimal 17 tahun dan maksimal 45 tahun.
            </small>
          </div>

          <div class="mb-3">
            <label class="form-label">Jenis Kelamin</label>

            <div class="form-check">
              <input class="form-check-input" type="radio" name="jenis_kelamin" id="laki_laki" value="Laki-laki" checked>
              <label class="form-check-label" for="laki_laki">
                Laki-laki
              </label>
            </div>

            <div class="form-check">
              <input class="form-check-input" type="radio" name="jenis_kelamin" id="perempuan" value="Perempuan">
              <label class="form-check-label" for="perempuan">
                Perempuan
              </label>
            </div>
          </div>

          <div class="mb-3">
            <button type="reset" class="btn btn-secondary">
              Reset
            </button>

            <button type="submit" name="simpan" class="btn btn-primary">
              Simpan
            </button>
          </div>

        </form>
      </div>
    </div>
  </div>
</body>

</html>