# -*- coding: utf-8 -*-
from odoo import api, fields, models


class HmsAppointment(models.Model):
    _name = "hms.appointment"
    _inherit = ['portal.mixin', 'hms.appointment']

    def _compute_access_url(self):
        super(HmsAppointment, self)._compute_access_url()
        for record in self:
            record.access_url = '/my/appointments/%s' % (record.id)

    def acs_preview_record(self):
        self.ensure_one()
        return {
            'type': 'ir.actions.act_url',
            'target': 'self',
            'url': self.get_portal_url(),
        }


class PrescriptionOrder(models.Model):
    _name = "prescription.order"
    _inherit = ['portal.mixin', 'prescription.order']

    def _compute_access_url(self):
        super(PrescriptionOrder, self)._compute_access_url()
        for record in self:
            record.access_url = '/my/prescriptions/%s' % (record.id)

    def acs_preview_record(self):
        self.ensure_one()
        return {
            'type': 'ir.actions.act_url',
            'target': 'self',
            'url': self.get_portal_url(),
        }


class AcsPatientEvaluation(models.Model):
    _name = "acs.patient.evaluation"
    _inherit = ['portal.mixin', 'acs.patient.evaluation']

    def _compute_access_url(self):
        super(AcsPatientEvaluation, self)._compute_access_url()
        for record in self:
            record.access_url = '/my/evaluations/%s' % (record.id)

    def acs_preview_record(self):
        self.ensure_one()
        return {
            'type': 'ir.actions.act_url',
            'target': 'self',
            'url': self.get_portal_url(),
        }
