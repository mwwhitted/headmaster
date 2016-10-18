<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateClassesteachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ClassesTeachers', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('class_id')->references('id')->on('classheaders');
            $table->unsignedInteger('teacher_id')->references('id')->on('teachers');
            $table->timestamps();

            $table->index('class_id');
            $table->index('teacher_id');

            // $table->foreign('class_id')->references('id')->on('classheaders');
            // $table->foreign('teacher_id')->references('id')->on('teachers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ClassesTeachers');
    }
}
