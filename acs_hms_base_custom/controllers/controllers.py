# -*- coding: utf-8 -*-
# from odoo import http


# class AcsHmsBaseCustom(http.Controller):
#     @http.route('/acs_hms_base_custom/acs_hms_base_custom', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/acs_hms_base_custom/acs_hms_base_custom/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('acs_hms_base_custom.listing', {
#             'root': '/acs_hms_base_custom/acs_hms_base_custom',
#             'objects': http.request.env['acs_hms_base_custom.acs_hms_base_custom'].search([]),
#         })

#     @http.route('/acs_hms_base_custom/acs_hms_base_custom/objects/<model("acs_hms_base_custom.acs_hms_base_custom"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('acs_hms_base_custom.object', {
#             'object': obj
#         })

