odoo.define('acs_video_call.systray', function (require) {
"use strict";

const core = require('web.core');
const SystrayMenu = require('web.SystrayMenu');
const Widget = require('web.Widget');
const session = require('web.session');
const Dialog = require('web.Dialog');

const QWeb = core.qweb;

const VideoCallPopup = Widget.extend({
    template:'VideoCallPopup',
    events: {
        "click": "on_click_video_button",
    },
	on_click_video_button: function (event) {
		var self = this;
        event.preventDefault();
        self._rpc({
            route: '/web/action/load',
            params: {action_id: "acs_video_call.action_acs_video_call_popup"},
        }).then(function(action) {
            self.do_action(action);
        });
    },
});

SystrayMenu.Items.push(VideoCallPopup);

});
