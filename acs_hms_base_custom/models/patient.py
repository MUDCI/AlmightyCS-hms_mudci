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


    def action_import_image(self):



        # Chemin du répertoire contenant les images
        repertoire_images = '/home/veone/Documents/Import'

        # Extensions d'images prises en charge
        extensions_images = ['.jpg', '.jpeg', '.png', '.gif']

        # Parcourir les fichiers dans le répertoire
        noms_images = []
        for nom_fichier in os.listdir(repertoire_images):
            # Vérifier si le fichier a une extension d'image
            if any(nom_fichier.endswith(extension) for extension in extensions_images):
                noms_images.append(nom_fichier)

        # Afficher les noms des images
        for nom_image in noms_images:
            print(nom_image)
            _logger.info(f"{'=' * 52}L46 {nom_image}")



        # Path to the image file
        # image_path = '/home/veone/Documents/Import/0000001600.png'
        # image_path = '/home/veone/Documents/Import/'
        #
        # patient_rec = self.search([('code', '=', image_path)])
        # _logger.info(f"{'=' * 50}L46 {patient_rec}")
        #
        # # Read image file and encode it to base64
        # with open(image_path, 'rb') as f:
        #     image_data = f.read()
        #     encoded_image = base64.b64encode(image_data)



            # # Connect to Odoo database
            # common = xmlrpc.client.ServerProxy('{}/xmlrpc/2/common'.format(url))
            # uid = common.authenticate(db, username, password, {})
            #
            # models = xmlrpc.client.ServerProxy('{}/xmlrpc/2/object'.format(url))
            #
            # # Update the record in Odoo with the encoded image
            # models.execute_kw(db, uid, password, model_name, 'write', [[record_id], {image_field: encoded_image}])
