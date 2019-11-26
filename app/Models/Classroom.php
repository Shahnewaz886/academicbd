<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Classroom extends Model
{
    protected $table='class_room';


    public function teacher()
    {
        return $this->belongsTo('App\User','teacher_id');
    }

}



