<?php
/**
 * @NOTICE apidoc usage example
 * apidoc -i ./* -o docs/apiDoc/
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;

/**
 * @apiDefine Result
 * @apiSuccess (200) {int} errno 错误码
 * @apiSuccess (200) {string} request_id 请求唯一标识
 * @apiSuccess (200) {string} errmsg 错误详情
 * @apiSuccess (200) {string} tipmsg 错误提示信息
 * @apiSuccess (200) {object} data 数据信息
 */

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

/**
 * @apiDefine UserInfo 用户信息
 * @apiParam {string} [name] 姓名.
 * @apiParam {string}  emial   邮箱📮.
 * @apiParam {int} [age=18]    可选择参数.
 *
 * @apiParamExample {json} 参数信息:
 *     {
 *       "name": "neo",
 *       "email": "woycz1234567@126.com",
 *       "age": 20
 *     }
 */

class ApiDocIlluminationController extends Controller
{
    /**
     * @apiIgnore 未完成的文档，暂时不解析
     * @api {method} /path title
     * @apiName apiName
     * @apiGroup group
     * @apiVersion  major.minor.patch
     *
     *
     * @apiParam  {String} paramName description
     *
     * @apiSuccess (200) {type} name description
     *
     * @apiParamExample  {type} Request-Example:
     * {
     *     property : value
     * }
     *
     *
     * @apiSuccessExample {type} Success-Response:
     * {
     *     property : value
     * }
     *
     *
     */
    public function index($id)
    {
        return $id;
    }
    /**
     * @api {post} /user/create CreateUser
     * @apiName createUser
     * @apiVersion  0.0.1
     * @apiGroup  User
     * @apiPermission admin
     * @apiPrivate
     * @apiSampleRequest http://www.test.com
     *
     * @apiUse UserInfo
     *
     */
    public function create()
    {
        //
    }

    public function edit($id)
    {
        //
    }

    /**
     *@apiIgnore Not finished Method
     * @api {post} /user/ StoreUser
     * @apiName postUser
     * @apiGroup User
     * @apiVersion  0.0.1
     *
     * @apiParam  {String} paramName description
     *
     * @apiSuccess (200) {type} name description
     *
     * @apiParamExample  {type} Request-Example:
     * {
     *     property : value
     * }
     *
     *
     * @apiSuccessExample {type} Success-Response:
     * {
     *     property : value
     * }
     * @apiDeprecated use now (#User:getUser).
     * Example: to set a link to the GetDetails method of your group User
     * write (#User:getUser)
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * @api {get} /user/:id GetUserByID
     * @apiVersion 0.1.1
     * @apiName getUser
     * @apiGroup User
     *
     * @apiParam {int64} id 用户唯一标识.
     *
     * @apiUse Result
     *
     * @apiPermission admin
     * @apiSuccessExample  成功返回:
     *     HTTP/1.1 200 OK
     *     {
     *          errno : 0
     *          errmsg : ""
     *          tipmsg : ""
     *          request_id : "0580337640"
     *          data : {
     *              "id":1,
     *              "email": "woycz1234567@126.com" // 邮箱
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
