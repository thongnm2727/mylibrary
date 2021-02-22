<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BookRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;


class BookRequestController extends Controller
{
    //
    public function getAll(Request $request)
    {
        $user = Auth::user();
        if (!is_null($user)) {
            $status = $request->input('language');
            $book_requests = DB::table('book_request')
                ->when($status, function ($query, $status) {
                    return $query->where('status', $status);
                })
                ->orderBy('id', 'desc')
                ->get()->toArray();

            return response()->json(["status" => "success", "book_requests" => $book_requests], 200);
        } else {
            return response()->json(["status" => "failed", "message" => "Un-authorized user"], 403);
        }
    }

    public function return($id)
    {
        $user = Auth::user();
        if (!is_null($user)) {
            $book_request = DB::table('book_request')->find($id);

            DB::table('book_copy')->where('id', $book_request->book_copy_id)
                ->update([
                    'status' => 'Available',
                    'requested_date' => '/',
                    'return_date' => '/',
                ]);

            DB::table('book_request')
                ->where('id', $id)
                ->update([
                    'status' => 'Returned',
                ]);

            $book_requests = DB::table('book_request')
                ->orderBy('id', 'desc')
                ->get()->toArray();
            return response()->json(["status" => "success", "book_requests" => $book_requests], 200);
        } else {
            return response()->json(["status" => "failed", "message" => "Un-authorized user"], 403);
        }
    }

    public function add(Request $request)
    {
        $user = Auth::user();
        if (!is_null($user)) {
            DB::table('book_request')->insert([
                'book_copy_id' => $request->input('book_copy_id'),
                'requested_date' => $request->input('requested_date'),
                'return_date' => $request->input('return_date'),
                'status' => 'Unreturned'
            ]);

            DB::table('book_copy')
                ->where('id', $request->get('book_copy_id'))
                ->update([
                    'status' => 'Unavailable',
                    'requested_date' => $request->get('requested_date'),
                    'return_date' => $request->get('return_date'),
                ]);

            $book_id = DB::table('book_copy')->find($request->get('book_copy_id'))->book_id;
            DB::table('books')
                ->where('id', $book_id)
                ->increment('number_of_requests');

            $book_requests = DB::table('book_request')
                ->orderBy('id', 'desc')
                ->get()->toArray();

            return response()->json(["status" => "success", 'book_requests' => $book_requests], 200);
        } else {
            return response()->json(["status" => "failed", "message" => "Un-authorized user"], 403);
        }
    }

    public function delete($id)
    {
        $user = Auth::user();
        if (!is_null($user)) {
            DB::table('book_request')->where('id', $id)->delete();
            return response()->json(["status" => "success", "message" => "Delete request success!"], 200);
        } else {
            return response()->json(["status" => "failed", "message" => "Un-authorized user"], 403);
        }
    }
}
