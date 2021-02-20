<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddOnDeleteCascadeBookCopyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('book_copy', function (Blueprint $table) {
            //
            $table->dropForeign('book_copy_book_id_foreign');
            $table->foreign('book_id')
            ->references('id')->on('books')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('book_copy', function (Blueprint $table) {
            //
        });
    }
}
