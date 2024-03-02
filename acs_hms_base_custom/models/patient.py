# -*- coding: utf-8 -*-

from odoo import api, fields, models ,_
from odoo.exceptions import UserError


class ACSPatient(models.Model):
    _inherit = 'hms.patient'

    registration_number = fields.Char("Matricule", required=True)
    identification_id = fields.Char("ID Adhérent")
    parent_identification_id = fields.Char("ID Ayant Droit")
    locality = fields.Char("Localité")
    last_name = fields.Char("Nom")
