<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePeopleTable extends Migration
{
  /**
  * Run the migrations.
  *
  * @return void
  */
  public function up()
  {
    Schema::create('People', function (Blueprint $table) {
      $table->increments('id');
      $table->string('first_name')->nullable();
      $table->string('middle_name')->nullable();
      $table->string('last_name');
      $table->string('prefix')->nullable();
      $table->string('suffix')->nullable();
      $table->string('gender');
      $table->string('display_name');
      $table->timestamps();
      $table->index('display_name');
      $table->index('last_name');
    });
  }

  /**
  * Reverse the migrations.
  *
  * @return void
  */
  public function down()
  {
    Schema::dropIfExists('People');
  }
}
