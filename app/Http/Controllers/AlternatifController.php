<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alternatif;
use Illuminate\Support\Facades\Session;

class AlternatifController extends Controller
{
    public function index()
    {
        $alternatif = Alternatif::all();
        return view('Alternatif.index', ['alternatifList' => $alternatif]);
    }

    public function create()
    {
        return view('Alternatif.create');
    }

    public function store(Request $request)
    {
        $data = new Alternatif;
        $data->nama = $request->nama;
        $data->alamat = $request->alamat;
        $data->harga = $request->harga;
        $data->kebersihan = $request->kebersihan;
        $data->kenyamanan = $request->kenyamanan;
        $data->fasilitas = $request->fasilitas;
        $data->jajanan = $request->jajanan;
        $data->save();
        return redirect('alternatif')->with('inserted', 'Data Berhasil Ditambahkan');
    }

    public function edit(Request $request, $id)
    {
        $data = Alternatif::findOrFail($id);
        return view('Alternatif.edit', ['alternatifList' => $data]);
    }

    public function update(Request $request, $id)
    {
        $data = Alternatif::findOrFail($id);
        $data->nama = $request->nama;
        $data->alamat = $request->alamat;
        $data->harga = $request->harga;
        $data->kebersihan = $request->kebersihan;
        $data->kenyamanan = $request->kenyamanan;
        $data->fasilitas = $request->fasilitas;
        $data->jajanan = $request->jajanan;
        $data->save();
        return redirect('alternatif')->with('updated', 'Data Berhasil Diperbarui');
    }

    public function destroy($id)
    {
        $data = Alternatif::find($id);
        $data->delete();
        return redirect('alternatif')->with('deleted', 'Data Berhasil Dihapus');
    }
}
