<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
  /**
     * Fillable fields
     *
     * @var array
     */
    protected $fillable = [
        'person_id',
        'dob',
        'grade',
        'foreign_student',
        'fed_student_id'
    ];
  //  Get the person record associated with the student.
  public function person()
  {
    return $this->hasOne('App\Person');
  }
}
