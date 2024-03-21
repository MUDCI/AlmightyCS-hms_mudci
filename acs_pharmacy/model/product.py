# -*- coding: utf-8 -*-

from odoo import fields, models, api, _
from odoo.exceptions import UserError, ValidationError

class ProductTemplate(models.Model):
    _inherit = 'product.template'

    # manufacturer_pname = fields.Char('Product Name')
    manufacturer_pname = fields.Char('Nom du produit')
    # manufacturer_pref = fields.Char('Product Code')
    manufacturer_pref = fields.Char('Code du produit')
    # manufacturer_purl = fields.Char('Product URL')
    manufacturer_purl = fields.Char('URL du produit')


class ProductCategory(models.Model):
    _inherit = 'product.category'

    lot_default_locked = fields.Boolean(string='Block new Serial Numbers/lots',
        help='If checked, future Serial Numbers/lots will be created blocked by default')

# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4: