<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Hasil;

class HasilController extends Controller
{
    public function index()
    {
        $hasil = Hasil::orderBy('hasil', 'desc')->get();
        return view('Hasil.index', ['hasilList' => $hasil]);
    }
}
