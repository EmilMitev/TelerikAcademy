(function () {
    'use strict';

    angular.module('SourceControlSystem.services')
        .factory('notifier', ['toastr', function (toastr) {
            return {
                success: function (msg) {
                    toastr.success(msg);
                },
                error: function (msg) {
                    toastr.error(msg);
                }
            }
    }])
}());