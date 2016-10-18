<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClassheadersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ClassHeaders', function (Blueprint $table) {
          $table->increments('id');
            $table->unsignedInteger('subject_id');
            $table->string('day')->nullable();
            $table->time('time')->nullable();
            $table->unsignedInteger('school_year_id');
            $table->string('term')->nullable();
            $table->string('room')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ClassHeaders');
    }
}
