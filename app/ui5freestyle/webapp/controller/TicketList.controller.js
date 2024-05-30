sap.ui.define([
    "app/ui5freestyle/controller/BaseController"
],
    function (BaseController) {
        "use strict";

        return BaseController.extend("app.ui5freestyle.controller.TicketList", {
            onInit: async function () {
                var oRouter = this.getOwnerComponent().getRouter();
                oRouter.getRoute("TicketList").attachMatched(this._onRouteMatched, this);
            },
            _onRouteMatched: function () {
                //
            }
        });
    });
