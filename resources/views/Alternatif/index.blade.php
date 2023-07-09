@extends('layouts.index')
@section('title', 'Alternatif')

@section('content')
    <h2 class="mt-2">Alternatif</h2>
    <div class="mb-3">
        <a href="/alternatif/create" class="btn btn-secondary">+ Tambah Alternatif</a>
    </div>

    @if ($message = Session::get('inserted'))
            <div class="alert alert-success alert-dismissible fade show mb-3 mt-3" role="alert">
                {{ $message }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @elseif ($message = Session::get('updated'))
            <div class="alert alert-primary alert-dismissible fade show mb-3 mt-3" role="alert">
                {{ $message }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @elseif ($message = Session::get('deleted'))
            <div class="alert alert-danger alert-dismissible fade show mb-3 mt-3" role="alert">
                {{ $message }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
    @endif

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
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($alternatifList as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $data->nama }}</td>
                        <td>{{ $data->alamat }}</td>
                        <td>{{ $data->harga }}</td>
                        <td>{{ $data->kebersihan }}</td>
                        <td>{{ $data->kenyamanan }}</td>
                        <td>{{ $data->fasilitas }}</td>
                        <td>{{ $data->jajanan }}</td>
                        <td>
                            <a href="/alternatif/edit/{{ $data->id }}">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </a>
                            <a href="/alternatif/delete/{{ $data->id }}">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection