<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

/**
 * Class Products.
 *
 * @author  The scaffold-interface created at 2016-10-13 11:20:11pm
 * @link  https://github.com/amranidev/scaffold-interface
 */
class Products extends Migration
{
    /**
     * Run the migrations.
     *
     * @return  void
     */
    public function up()
    {
        Schema::create('products',function (Blueprint $table){

        $table->increments('id');
        
        $table->String('product_name');
        
        $table->float('product_price');
        
        /**
         * Foreignkeys section
         */
        
        
        $table->timestamps();
        
        
        // type your addition here

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return  void
     */
    public function down()
    {
        Schema::drop('products');
    }
}
