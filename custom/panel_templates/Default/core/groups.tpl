{include file='header.tpl'}
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    {include file='navbar.tpl'}
    {include file='sidebar.tpl'}

    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">{$GROUPS}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$GROUPS}</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                {include file='includes/update.tpl'}

                <div class="card">
                    <div class="card-body">
                        <a class="btn btn-primary" href="{$NEW_GROUP_LINK}">{$NEW_GROUP}</a>
                        <hr />


                        {include file='includes/success.tpl'}

                        {include file='includes/errors.tpl'}

                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>{$ORDER}</th>
                                        <th>{$GROUP_ID}</th>
                                        <th>{$NAME}</th>
                                        <th>{$USERS}</th>
                                        <th>{$STAFF}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$GROUP_LIST item=group}
                                        <tr>
                                            <td>{$group.order}</td>
                                            <td>{$group.id}</td>
                                            <td><a href="{$group.edit_link}">{$group.name}</a></td>
                                            <td>{$group.users}</td>
                                            <td>{if $group.staff}<i class="fas fa-check-circle text-success"></i>{else}<i class="fas fa-times-circle text-danger"></i>{/if}</td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>

                <!-- Spacing -->
                <div style="height:1rem;"></div>

            </div>
        </section>
    </div>

    {include file='footer.tpl'}

</div>
<!-- ./wrapper -->

{include file='scripts.tpl'}

</body>
</html>
