<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BookRequest;
use Illuminate\Support\Facades\DB;

class BookRequestController extends Controller
{
    //
    public function getAll()
    {
        $book_requests = DB::table('book_request')->get()->toArray();
        return response()->json(["status" => "success", "book_requests" => $book_requests], 200);
    }

    public function add(Request $request, $book_copy_id)
    {
        DB::table('book_request')->insert([
            'book_copy_id' => $book_copy_id,
            'requested_date' => $request->get('requested_date'),
            'return_date' => $request->get('return_date'),
            'status' => 'Unreturned'
        ]);
        return response()->json(["status" => "success",], 200);
    }
}
