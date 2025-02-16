﻿(function () {
    'use strict';

    function statistics($q, data) {

        var statistics;

        function getStats() {
            if (statistics) {
                return $q.when(statistics);
            }
            else {
                return data.get('api/statistics')
                    .then(function (stats) {
                        statistics = stats;
                        return stats;
                    });
            }
        }

        return {
            getStats: getStats
        }
    }

    angular.module('SourceControlSystem.services')
        .factory('statistics', ['$q', 'data', statistics]);
}());