<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiDocIlluminationController extends Controller
{
    /**
     *
     * @api {get} /index apiDoc index
     * @apiName index
     * @apiGroup group
     * @apiVersion  0.1.0
     *
     *
     * @apiParam  {Number} id id of the apiDoc
     *
     * @apiSuccess (200) {Number} id id of item
     *
     * @apiParamExample  {Number} Request-Example:
     * {
     *     $id : 10
     * }
     *
     *
     * @apiSuccessExample {Number} Success-Response:
     * {
     *     id : 10
     * }
     *
     *
     */
    public function index($id)
    {
        return $id;
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
