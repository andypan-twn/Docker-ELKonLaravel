<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExampleController extends Controller
{
    function createLog(Request $request){
        \Log::info($request->input('msg', null));
        return response('OK', 200);
    }
}
