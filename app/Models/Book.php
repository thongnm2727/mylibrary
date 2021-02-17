<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'author','publisher', 'publication_date','description','language',
    ];

    protected $attributes = [
        'number_of_requests' => 0,     
        'language' => "English"   
    ];
}
