<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>商品分类管理</title>

    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="/vendor/bootstrap/css/bootstrap-table-group-by.css" rel="stylesheet" type="text/css">
    <link href="/vendor/bootstrap/css/bootstrap-table.min.css" rel="stylesheet" type="text/css">

    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="/vendor/toastr/toastr.css" rel="stylesheet" type="text/css">


</head>

<body id="page-top">

<div id="wrapper">

    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">常明杰_董旺<sup>20172202988</sup></div>
        </a>

        <hr class="sidebar-divider my-0">

        <li class="nav-item">
            <a class="nav-link" href="/">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>商城首页</span></a>
        </li>

        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#userManager"
               aria-expanded="true" aria-controls="userManager">
                <i class="fas fa-fw fa-user"></i>
                <span>用户管理</span>
            </a>
            <div id="userManager" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">User</h6>
                    <a class="collapse-item" href="/admin/users/list">用户列表</a>
                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#goodsManager"
               aria-expanded="true" aria-controls="goodsManager">
                <i class="fas fa-fw fa-shopping-bag"></i>
                <span>商品管理</span>
            </a>
            <div id="goodsManager" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Goods</h6>
                    <a class="collapse-item" href="/admin/goods">商品列表</a>
                </div>
            </div>
        </li>

        <li class="nav-item active">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#catalogManager"
               aria-expanded="true" aria-controls="catalogManager">
                <i class="fas fa-fw fa-th"></i>
                <span>分类管理</span>
            </a>
            <div id="catalogManager" class="collapse show" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Catalog</h6>
                    <a class="collapse-item active" href="/admin/catalog">分类管理</a>
                </div>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#orderManager"
               aria-expanded="true" aria-controls="orderManager">
                <i class="fas fa-fw fa-money-check"></i>
                <span>订单管理</span>
            </a>
            <div id="orderManager" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Orders</h6>
                    <a class="collapse-item" href="/admin/orders">订单管理</a>
                </div>
            </div>
        </li>

        <hr class="sidebar-divider d-none d-md-block">

        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>


    <div id="content-wrapper" class="d-flex flex-column">

        <div id="content">

            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fas fa-bars"></i>
                </button>

                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="搜索..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <ul class="navbar-nav ml-auto">

                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="搜索..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Cao Hao</span>
                            <img class="img-profile rounded-circle" src="http://q1.qlogo.cn/g?b=qq&nk=1464435902&s=100">
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in">

                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                注销
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <div class="container-fluid">

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">商品分类管理
                            <a href="#" data-pid="0" data-toggle="modal" data-target="#insertModal"
                               class="btn btn-primary btn-icon-split btn-sm float-right">
                                <span class="icon text-white-50"><i class="fas fa-plus"></i></span>
                                <span class="text">添加分类</span>
                            </a>
                        </h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="table" width="100%"
                                   data-toggle="table"
                                   data-pagination="true">
                                <thead>
                                <tr>
                                    <th data-field="name">分类名称</th>
                                    <th data-field="status" data-formatter="statusFormatter">状态</th>
                                    <th data-formatter="operateFormatter">操作</th>
                                </tr>
                                </thead>
                            </table>
                        </div>

                    </div>
                </div>

            </div>

        </div>
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Your Website 2019</span>
                </div>
            </div>
        </footer>
    </div>
</div>
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">提示</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">是否要注销账号</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn btn-primary" href="/logout">注销</a>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="insertModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="insertModalLabel">添加商品分类</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="insertForm">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="name">分类名称</label>
                            <input type="text" class="form-control" id="name" name="catalog.name"
                                   placeholder="请输入分类名称">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="status">是否启用</label>
                            <select id="status" name="catalog.status" class="form-control">
                                <option value="0" selected>启用</option>
                                <option value="1">禁用</option>
                            </select>
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn btn-primary" href="javascript:;" onclick="insertCatalog()">添加</a>
            </div>
        </div>
    </div>
</div>

<!-- insert Modal-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">更新分类信息</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">

                <form id="editForm">
                    <input type="text" hidden id="eid" name="catalog.id">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="ename">分类名称</label>
                            <input type="text" class="form-control" id="ename" name="catalog.name"
                                   placeholder="请输入分类名称">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="estatus">是否启用</label>
                            <select id="estatus" name="catalog.status" class="form-control">
                                <option value="0" selected>启用</option>
                                <option value="1">禁用</option>
                            </select>
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn btn-primary" href="javascript:;" id="editUpdate">更新</a>
            </div>
        </div>
    </div>
</div>

<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.js"></script>

<script src="/vendor/bootstrap/js/bootstrap-table.js"></script>
<script src="/vendor/bootstrap/js/bootstrap-table-zh-CN.js"></script>
<script src="/vendor/bootstrap/js/bootstrap-table-group-by.min.js"></script>

<script src="/vendor/toastr/toastr.min.js"></script>

<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

<script src="/js/sb-admin-2.min.js"></script>

<script>

    $(function () {
        loadTableData()
    })

    function loadTableData() {
        $.get("/admin/catalog/list"
            , function (data) {
                console.log(data);
                if (data.success) {

                    $("#table").bootstrapTable("load", data.data)
                } else {
                    toastr.error(data.msg)
                }
            }
        )
    }


    //     value：字段值。row：行记录数据。index：行索引。field：行字段。

    function operateFormatter(value, row, index, field) {
        return [
            '<button onclick="updateCatalog(' + index + ')"',
            'class="btn btn-primary btn-icon-split btn-sm" style="margin-right:10px;">',
            '<span class="icon text-white-50"><i class="fas fa-edit "></i></span>',
            ' <span class="text">编辑</span>',
            '',
            '<button onclick="delCatalog(' + index + ')"',
            'class="btn btn-danger btn-icon-split btn-sm">',
            '<span class="icon text-white-50"><i class="fas fa-eraser"></i></span>',
            ' <span class="text">删除</span>'
        ].join('');

    }


    function statusFormatter(value, row, index, field) {
        if (value == 0) {
            return '<span class="badge badge-primary">启用</span>';
        } else if (value == 1) {
            return '<span class="badge badge-warning">禁用</span>';
        }
    }

    function insertCatalog() {
        //row = $("#table").bootstrapTable('getData')[index]
        $.post("/admin/catalog/insert",
            $('#insertForm').serialize()
            , function (data) {
                if (data.success) {
                    toastr.success(data.msg)
                    $('#insertModal').modal('hide')
                    loadTableData()
                } else {
                    toastr.error(data.msg)
                }
            })
    }

    function delCatalog(index) {
        row = $("#table").bootstrapTable('getData')[index]
        if (confirm("是否删除？")) {
            $.post("/admin/catalog/delete",
                {
                    catalogId: row.id
                }
                , function (data) {
                    if (data.success) {
                        toastr.success(data.msg)
                        loadTableData()
                    } else {
                        toastr.error(data.msg)
                    }
                });
        }
    }

    function updateCatalog(index) {
        row = $("#table").bootstrapTable('getData')[index]

        $('#editModal #eid').val(row.id)
        $('#editModal #ename').val(row.name)
        $('#editModal #estatus').val(row.status)

        $('#editModal #editUpdate').unbind("click").bind("click", function () {
            $.post("/admin/catalog/update",
                $("#editForm").serialize()
                , function (data) {
                    if (data.success) {
                        toastr.success(data.msg)
                        $('#editModal').modal('hide')
                        loadTableData()
                    } else {
                        toastr.error(data.msg)
                    }
                })
        });
        $('#editModal').modal('show')

    }


</script>

</body>

</html>
