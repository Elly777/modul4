<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscriber;
class SubscriberController extends Controller
{
    public function subscribe(Request $request)
    {
        if ($data = $request->all()) {
            $sub = Subscriber::create($data);
            $sub->save();
        }
        return redirect('/')->with('notify', 'Thank you! You are great man!');
    }
}
