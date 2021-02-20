<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddOnDeleteCascadeBookRequest extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('book_request', function (Blueprint $table) {
            //
            $table->dropForeign('book_request_book_copy_id_foreign');
            $table->foreign('book_copy_id')
            ->references('id')->on('book_copy')
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
        Schema::table('book_request', function (Blueprint $table) {
            //
        });
    }
}
