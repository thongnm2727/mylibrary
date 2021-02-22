<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;

class BookController extends Controller
{
    //
    public function index(Request $request){
        // if($request->input('author')){
        //     $books = Book::latest()
        //     ->where('author', $request->input('author'))
        //     ->paginate(8);
        // }else{
            $author = $request->input('author');
            $language = $request->input('language');
            $books = Book::latest()
            ->when($author, function($query, $author){
                return $query->where('author', $author);
            })
            ->when($language, function($query, $language){
                return $query->where('language', $language);
            })
            ->paginate(4);
        // }

        $response = [
            'pagination' => [
                'total' => $books->total(),
                'per_page' => $books->perPage(),
                'current_page' => $books->currentPage(),
                'last_page' => $books->lastPage(),
                'from' => $books->firstItem(),
                'to' => $books->lastItem(),
            ],
            'books' => $books,
            "status" => "success"
        ];
        return response()->json($response, 200);
    }

    public function add(Request $request){
        if($request->get('image'))
        {
           $image = $request->get('image');
           $name = time().'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];
           \Image::make($request->get('image'))->save(public_path('images/').$name);
         }
        $book = new Book;
        $book->name = $request->get('name');
        $book->author = $request->get('author');
        $book->publisher = $request->get('publisher');
        $book->publication_date = $request->get('publication_date');
        $book->language = $request->get('language');
        $book->description = $request->get('description');
        $book->image = $name;
        $book->save();

        if(!is_null($book)){
            return response()->json(["status" => "success", "message" => "Success! New book created", 
            ]);
        }else{
            return response()->json(["status" => "failed", "message" => "Whoops! book created fail!"]);
        }
    }

    public function detail($id){
        $book = Book::find($id);
        return response()->json(["status" => "success", "book" => $book], 200);
    }

    public function update($id, Request $request){
        $input = $request->all();
        
        $book = Book::find($id);
        $book->update($request->all());
        return response()->json(["status" => "success", "message" => "Update book success!", 
        "book" => $book], 200);
    }

    public function delete($id){
        $book = Book::find($id)->delete();
        return response()->json(["status" => "success", "message" => "Delete book success!"], 200);
    }
}
