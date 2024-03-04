# -*- coding: utf-8 -*-

from odoo import api, fields, models ,_
from odoo.exceptions import UserError
from odoo import models, fields, api, exceptions, _
from odoo.http import request

import logging
_logger = logging.getLogger(__name__)


class ACSPatient(models.Model):
    _inherit = 'hms.patient'

    registration_number = fields.Char("Matricule")
    identification_id = fields.Char("ID Adhérent")
    parent_identification_id = fields.Char("ID Ayant Droit")
    parent_id = fields.Many2one('hms.patient', string="Ayant Droit", compute='get_parent_id')
    locality = fields.Char("Localité")
    last_name = fields.Char("Prénoms")
    familial_status = fields.Selection([('child', 'Enfant'),
                                        ('spouse', 'Conjoint (e)')], string="Statut Familial")

    @api.onchange('parent_identification_id')
    def get_parent_id(self):
        for rec in self:
            parent_id = self.search([('code', '=', rec.parent_identification_id)], limit=1)
            rec.parent_id = parent_id.id
