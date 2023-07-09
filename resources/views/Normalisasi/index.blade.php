@extends('layouts.index')
@section('title', 'Normalisasi')

@section('content')

    <h2 class="mt-2">Normalisasi</h2>

    <div>
        <table class="table table-striped table-hover">
            <thead class="table">
                <tr>
                    <th>No</th>
                    <th>Alternatif</th>
                    <th>Alamat</th>
                    <th>Harga</th>
                    <th>Kebersihan</th>
                    <th>Kenyamanan</th>
                    <th>Fasilitas</th>
                    <th>Jajanan</th>
                </tr>
            </thead>
            <tbody>
                @foreach($normalisasiList as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $data->nama }}</td>
                        <td>{{ $data->alamat }}</td>
                        <td>{{ $data->harga }}</td>
                        <td>{{ $data->kebersihan }}</td>
                        <td>{{ $data->kenyamanan }}</td>
                        <td>{{ $data->fasilitas }}</td>
                        <td>{{ $data->jajanan }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

@endsection