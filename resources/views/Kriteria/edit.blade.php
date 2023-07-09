@extends('layouts.index')
@section('title', 'Edit Kriteria')

@section('content')

    <div class="mt-3 col-8 m-auto">
    <h2>Edit Data Kriteria</h2>
    </div>
    <div class="mt-5 col-8 m-auto">
        <form action="/kriteria/{{ $kriteriaList->id }}" method="POST">
            @csrf
            @method('PUT')
            <div class="mb-2">
                <label for="nama">Nama Kriteria</label>
                <input type="text" name="nama" class="form-control" id="nama" value="{{ $kriteriaList->nama }}" required>
            </div>
            <div class="mb-2">
                <label for="bobot">Bobot</label>
                <input type="text" name="bobot" class="form-control" id="bobot" value="{{ $kriteriaList->bobot }}" required>
                <div id="emailHelp" class="form-text">Gunakan bilangan desimal</div>
            </div>
            <div class="mb-2">
                <label for="label">Label Kriteria</label>
                <select name="label" class="form-control" id="label" required>
                    <option value="{{ $kriteriaList->label }}">{{ $kriteriaList->label }}</option>
                    @if ($kriteriaList->label == 'Cost')
                        <option value="Benefit">Benefit</option>
                    @else
                        <option value="Cost">Cost</option>
                    @endif
                </select>
            </div>
            <div class="mb-5">
                <button type="submit" class="btn btn-success">Simpan</button>
            </div>
        </form>
    </div>

@endsection