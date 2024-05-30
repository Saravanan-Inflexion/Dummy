sap.ui.define(
    [
        "sap/ui/core/mvc/Controller",
        "sap/ui/core/routing/History",
        "sap/m/library"
    ],
    function (
        Controller,
        History,
        mobileLibrary
    ) {
        "use strict";
        // shortcut for sap.m.ButtonType
        var ButtonType = mobileLibrary.ButtonType;

        // shortcut for sap.m.DialogType
        var DialogType = mobileLibrary.DialogType;
        return Controller.extend("app.ui5freestyle.controller.BaseController", {
            onInit: function () {
                ///
            },
            getRouter: function () {
                return sap.ui.core.UIComponent.getRouterFor(this);
            },
            /**
             * Convenience method for getting the view model by name.
             * @public
             * @param {string} [sName] the model name
             * @returns {sap.ui.model.Model} the model instance
             */
            getModel: function (sName) {
                return this.getView().getModel(sName);
            },

            /**
             * Convenience method for setting the view model.
             * @public
             * @param {sap.ui.model.Model} oModel the model instance
             * @param {string} sName the model name
             * @returns {sap.ui.mvc.View} the view instance
             */
            setModel: function (oModel, sName) {
                return this.getView().setModel(oModel, sName);
            },

            /**
             * Getter for the resource bundle.
             * @public
             * @returns {sap.ui.model.resource.ResourceModel} the resourceModel of the component
             */
            getResourceProperty: function (text) {
                return this.getOwnerComponent().getModel("i18n").getResourceBundle().getText(text);
            },
            onNavBack: function () {
                var oHistory, sPreviousHash, navData;
                navData = this.getModel("settings").getData();
                oHistory = History.getInstance();
                sPreviousHash = oHistory.getPreviousHash();

                if (sPreviousHash !== undefined && !navData.route) {
                    window.history.go(-1);
                } else if (navData.route) {
                    window.history.go(-2);
                } else {
                    this.getRouter().navTo("dashboard", {}, true /*no history*/);
                }
            },
            encode: function (value) {
                return btoa(value);
            },
            decode: function (value) {
                return atob(value);
            },
            setStorage: function (name, sContext) {
                jQuery.sap.require("jquery.sap.storage");
                var oStorage = jQuery.sap.storage(jQuery.sap.storage.Type.session);
                oStorage.put(name, sContext);
            },
            getStorage: function (name) {
                jQuery.sap.require("jquery.sap.storage");
                var oStorage = jQuery.sap.storage(jQuery.sap.storage.Type.session);
                return oStorage.get(name);
            },
        });
    }
);
