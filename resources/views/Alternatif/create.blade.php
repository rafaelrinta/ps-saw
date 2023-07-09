@extends('layouts.index')
@section('title', 'Tambah Alternatif')

@section('content')
    <div class="mt-3 col-8 m-auto">
    <h2>Tambah Data Alternatif</h2>
    </div>
    <div class="mt-5 col-8 m-auto">
        <form action="/alternatif/store" method="POST">
            @csrf
            <div class="mb-2">
                <label for="nama">Nama Tempat</label>
                <input type="text" name="nama" class="form-control" id="nama" required>
            </div>
            <div class="mb-2">
                <label for="alamat">Alamat</label>
                <textarea class="form-control" name="alamat" id="alamat" required></textarea>
            </div>
            <div class="mb-2">
                <label for="harga">Harga</label>
                <input type="text" name="harga" class="form-control" id="harga" required>
            </div>
            <div class="mb-2">
                <label for="kebersihan">Kebersihan</label>
                <select name="kebersihan" class="form-control" id="kebersihan" required>
                    <option value="" disabled selected>Pilih Salah Satu</option>
                    <option value="1">1 > Sangat Kurang</option>
                    <option value="2">2 > Kurang</option>
                    <option value="3">3 > Cukup Baik</option>
                    <option value="4">4 > Baik</option>
                    <option value="5">5 > Sangat Baik</option>
                </select>
            </div>
            <div class="mb-2">
                <label for="kenyamanan">Kenyamanan</label>
                <select name="kenyamanan" class="form-control" id="kenyamanan" required>
                    <option value="" disabled selected>Pilih Salah Satu</option>
                    <option value="1">1 > Sangat Kurang</option>
                    <option value="2">2 > Kurang</option>
                    <option value="3">3 > Cukup Baik</option>
                    <option value="4">4 > Baik</option>
                    <option value="5">5 > Sangat Baik</option>
                </select>
            </div>
            <div class="mb-2">
                <label for="fasilitas">Fasilitas</label>
                <select name="fasilitas" class="form-control" id="fasilitas" required>
                    <option value="" disabled selected>Pilih Salah Satu</option>
                    <option value="1">1 > Sangat Kurang</option>
                    <option value="2">2 > Kurang</option>
                    <option value="3">3 > Cukup Baik</option>
                    <option value="4">4 > Baik</option>
                    <option value="5">5 > Sangat Baik</option>
                </select>
            </div>
            <div class="mb-2">
                <label for="jajanan">Jajanan</label>
                <select name="jajanan" class="form-control" id="jajanan" required>
                    <option value="" disabled selected>Pilih Salah Satu</option>
                    <option value="1">1 > Sangat Kurang</option>
                    <option value="2">2 > Kurang</option>
                    <option value="3">3 > Cukup Baik</option>
                    <option value="4">4 > Baik</option>
                    <option value="5">5 > Sangat Baik</option>
                </select>
            </div>
            <div class="mb-5">
                <button type="submit" class="btn btn-success">Simpan</button>
            </div>
              
        </form>
    </div>

@endsection