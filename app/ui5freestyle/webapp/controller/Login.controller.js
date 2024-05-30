sap.ui.define([
    "app/ui5freestyle/controller/BaseController"
],
    function (BaseController) {
        "use strict";

        return BaseController.extend("app.ui5freestyle.controller.Login", {
            onInit: function () {
                var oRouter = this.getOwnerComponent().getRouter();
                oRouter.getRoute("RouteLogin").attachMatched(this._onRouteMatched, this);
            },
            _onRouteMatched: function (oEvent) {
                //
            },
            onSubmit: function () {
                this.getRouter().navTo("TicketList");
            }
        });
    });
