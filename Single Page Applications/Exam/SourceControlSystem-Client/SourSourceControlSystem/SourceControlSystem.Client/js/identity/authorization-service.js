(function () {
    'use strict';

    function authorization(identity) {
        return {
            getAuthorizationHeader: function () {
                if (!identity.isAuthenticated()) {
                    return {};
                }

                return {
                    'Authorization': 'Bearer ' + identity.getCurrentUser()['access_token']
                }
            }
        }
    }

    angular.module('SourceControlSystem.services')
        .factory('authorization', ['identity', authorization]);
}());