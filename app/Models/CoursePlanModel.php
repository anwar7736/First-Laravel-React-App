<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CoursePlanModel extends Model
{
    protected $table = 'course_plan';
    protected $primaryKey = 'id';
    public $incrementing = true;
    protected $keyType = 'int';
    public $timestamps = false;
}
