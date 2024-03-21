# -*- coding: utf-8 -*-

from odoo import api, fields, models ,_
from odoo.exceptions import UserError
from odoo import models, fields, api, exceptions, _
from odoo.http import request
import os
import base64
import logging
_logger = logging.getLogger(__name__)


class ACSPatient(models.Model):
    _inherit = 'hms.patient'

    
    # nationality_id = fields.Many2one("res.country", string="Nationalité")