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
      'last_name' =>'Whitted',
      'first_name' =>'Christopher',
      'middle_name' =>'',
      'prefix' =>'',
      'suffix' =>'',
      'gender' =>'M',
      'display_name' =>'Christopher Whitted',
      // 'created_at' =>Carbon::now(),
      // 'updated_at' =>Carbon::now(),
    ]);
    DB::table('people')->insert([
      'last_name' =>'Xu',
      'first_name' =>'Ke',
      'middle_name' =>'',
      'prefix' =>'',
      'suffix' =>'',
      'gender' =>'M',
      'display_name' =>'Ke Xu'
      // 'created_at' =>Carbon::now(),
      // 'updated_at' =>Carbon::now(),
    ]);
  }
}
