<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;

class BookController extends Controller
{
    //
    public function index(){
        $books = Book::all()->toArray();
        return response()->json(["status" => "success","books" => $books], 200);
    }

    public function add(Request $request){
        $bookInput = $request->all();
        $book = Book::create($bookInput);
        if(!is_null($book)){
            return response()->json(["status" => "success", "message" => "Success! New book created", 
            "data" => $book]);
        }else{
            return response()->json(["status" => "failed", "message" => "Whoops! book created fail!"]);
        }
    }

    public function detail($id){
        $book = Book::find($id);
        return response()->json(["status" => "success", "book" => $book], 200);
    }
}
