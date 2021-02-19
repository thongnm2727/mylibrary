<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BookCopy;
use Illuminate\Support\Facades\DB;

class BookCopyController extends Controller
{
    //
    public function getAll($book_id){
        $book_copies = DB::table('book_copy')
        ->orderBy('id', 'desc')
        ->where('book_id', $book_id)
        ->get()->toArray();
        return response()->json(["status" => "success", "book_copies" => $book_copies], 200);
    }

    public function delete($id){
        DB::table('book_copy')->where('id', $id)->delete();
        return response()->json(["status" => "success", "message" => "Delete book copy success!"], 200);
    }

    public function add($book_id){
        // BookCopy::create(['book_id', $book_id]);
        DB::table('book_copy')->insert([
            'book_id' =>$book_id,
        ]);

        $book_copies = DB::table('book_copy')
        ->where('book_id', $book_id)
        ->orderBy('id', 'desc')
        ->get()->toArray();
        return response()->json(["status" => "success", "book_copies" => $book_copies], 200);
    }
}
