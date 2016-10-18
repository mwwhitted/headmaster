<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Students', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('person_id')->references('id')->on('people');
            $table->date('dob');
            $table->string('grade');
            $table->boolean('foreign_student')->default(false);
            $table->string('fed_student_id')->index;
            $table->timestamps();

            $table->index('person_id');
            // $table->index('fed_student_id');

            // $table->foreign('person_id')->references('id')->on('people');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Students');
    }
}
