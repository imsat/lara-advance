<?php

namespace App\Http\Controllers;

use App\Models\Lesson;
use App\Traits\LessonFilters;

class LessonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(LessonFilters $filters)
    {
        return Lesson::filter($filters)->get();
//        $lesson = (new Lesson())->newQuery();
//
//        // exists doesn't check params like popular=something; without popular= return true
//        if($request->exists('popular')){
//            $lesson->orderBy('views', 'desc');
//        }
//        // has always check params like difficulty=something; without difficulty= return false
//        if($request->has('difficulty')){
//            $lesson->where('difficulty', $request->difficulty);
//        }
//        return $lesson->get();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function show(Lesson $lesson)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function edit(Lesson $lesson)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lesson $lesson)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Lesson  $lesson
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lesson $lesson)
    {
        //
    }
}
