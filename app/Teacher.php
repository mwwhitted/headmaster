<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{

  /**
     * Get the person record associated with the teacher.
     */
    public function person()
    {
        return $this->hasOne('App\Person');
    }

  // public function classes_teacher() {
  //
  //   return $this->hasMany(ClassesTeacher::class);
  //
  // }

  // public function addClassesTeacher(ClassesTeacher $classes_teacher) {  // User $user) {
  //
  //   // $note->user_id = $userId;
  //   return $this->ClassesTeachers()->save($classes_teacher);
  //
  // }
}
