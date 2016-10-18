<?php

use Illuminate\Database\Seeder;

class PeopleDatabaseSeeder extends Seeder
{
  /**
  * Run the database seeds.
  *
  * @return void
  */
  public function run()
  {
    DB::table('people')->insert([
      'last_name' =>'Headroom',
      'first_name' =>'Max',
      'middle_name' =>'',
      'prefix' =>'',
      'suffix' =>'',
      'gender' =>'M',
      'display_name' =>'Max Headroom',
      // 'created_at' =>Carbon::now(),
      // 'updated_at' =>Carbon::now(),
    ]);
    DB::table('people')->insert([
      'last_name' =>'Last',
      'first_name' =>'First',
      'middle_name' =>'',
      'prefix' =>'',
      'suffix' =>'',
      'gender' =>'F',
      'display_name' =>'First Last'
      // 'created_at' =>Carbon::now(),
      // 'updated_at' =>Carbon::now(),
    ]);
  }
}
