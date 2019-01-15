<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/**
 * @apiDefine UserNotFoundError
 *
 * @apiError UserNotFound 查无此人.
 *
 * @apiErrorExample 失败返回
 *     HTTP/1.1 404 Not Found
 *     {
 *       "error": "UserNotFound"
 *     }
 */
class ApiDocIlluminationController extends Controller
{
    public function index($id)
    {
        return $id;
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    /**
     * @api {get} /user/:id GetUserByID
     * @apiVersion 0.1.0
     * @apiName getUser
     * @apiGroup User
     *
     * @apiParam {int64} id 用户唯一标识.
     *
     * @apiSuccess (200) {int} errno 错误码
     * @apiSuccess (200) {string} request_id 请求唯一标识
     * @apiSuccess (200) {string} errmsg 错误详情
     * @apiSuccess (200) {string} tipmsg 错误提示信息
     * @apiSuccess (200) {object} data 数据信息
     *
     * @apiSuccessExample  成功返回:
     *     HTTP/1.1 200 OK
     *     {
     *          errno : 0
     *          errmsg : ""
     *          tipmsg : ""
     *          request_id : "0580337640"
     *          data : {
     *              "id":1,
     *              "name": "hello world"
     *          }
     *      }
     *
     * @apiUse UserNotFoundError
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
     * @api {put} /user/ ModifyUser
     * @apiName PutUser
     * @apiGroup User
     *
     * @apiParam {int64} id      用户唯一ID.
     * @apiParam {string} [name] 用户名.
     *
     * @apiSuccessExample 成功返回
     *     HTTP/1.1 200 OK
     *
     * @apiUse UserNotFoundError
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
