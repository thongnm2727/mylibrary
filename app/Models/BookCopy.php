<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookCopy extends Model
{
    use HasFactory;

    protected $fillable = [
        'book_id',
    ];

    protected $attributes = [
        'requested_date' => '',
        'return_date' => '',
        'status' => "Available",
    ];    
}
