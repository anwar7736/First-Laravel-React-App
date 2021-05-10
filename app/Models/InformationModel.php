<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InformationModel extends Model
{
    use HasFactory;
        protected $table = 'information_etc';
	    protected $primaryKey = 'id';
	    public $incrementing = true;
	    protected $keyType = 'int';
	    public $timestamps = false;
}
