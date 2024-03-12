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
    parent_identification_id = fields.Char("ID Adhérent")
    parent_id = fields.Many2one('hms.patient', string="Adhérent", compute='get_parent_id')
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
        repertoire_images = '/home/veone/Documents/Import/photos'
        # Extensions d'images prises en charge
        extensions_images = ['.jpg', '.jpeg', '.png', '.gif']
        # Parcourir les fichiers dans le répertoire
        noms_images = []
        for file_name in os.listdir(repertoire_images):
            # _logger.info(f"{'=' * 52}L43 {file_name}")
            # Vérifier si le fichier a une extension d'image
            if any(file_name.endswith(extension) for extension in extensions_images):
                noms_images.append(file_name)

        # Afficher les noms des images
        for nom_image in noms_images:
            image_without_ext = nom_image[:nom_image.rindex('.')]
            # print(image_without_ext)
            patient_rec = self.search([('code', '=', image_without_ext)], limit=1)
            if patient_rec:
                full_path = os.path.join(repertoire_images, nom_image)
                with open(full_path, 'rb') as f:
                    image_data = f.read()
                    encoded_image = base64.b64encode(image_data)
                    patient_rec.write({
                        'image_1920': encoded_image
                    })