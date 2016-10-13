<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
  /**
     * Get the teacher record associated with the person.
     */
    public function teacher()
    {
        return $this->hasOne('App\Person');
    }

}
