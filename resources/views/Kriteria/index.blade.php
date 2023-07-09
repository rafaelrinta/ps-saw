@extends('layouts.index')
@section('title', 'Kriteria')

@section('content')
        <h2 class="mt-2">Kriteria</h2>
        <div class="mb-3">
            <a href="/kriteria/create" class="btn btn-secondary">+ Tambah Kriteria</a>
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

        <table class="table table-striped table-hover">
            <thead class="table">
                <tr>
                    <th>No</th>
                    <th>Kriteria</th>
                    <th>Bobot</th>
                    <th>Label</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($kriteriaList as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $data->nama }}</td>
                        <td>{{ $data->bobot }}</td>
                        <td>{{ $data->label }}</td>
                        <td>
                            <a href="/kriteria/edit/{{ $data->id }}">
                                <button type="button" class="btn btn-primary">Edit</button>
                            </a>
                            <a href="/kriteria/delete/{{ $data->id }}">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection