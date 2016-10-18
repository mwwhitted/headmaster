<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
  /**
     * Fillable fields
     *
     * @var array
     */
    protected $fillable = [
        'first_name',
        'middle_name',
        'last_name',
        'prefix',
        'suffix',
        'gender',
        'display_name'
    ];

/**
  * Get the teacher record associated with the person.
  */
  public function teacher()
  {
    return $this->belongsTo('App\Person');
  }

  /**
  * Get the student record associated with the person.
  */
  public function student()
  {
    return $this->belongsTo('App\Person');
  }

}
