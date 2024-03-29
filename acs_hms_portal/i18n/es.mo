��    ?        Y         p  a   q     �  4   �  :        O  �  n     l     p     �     �  0   �  �   �     Y     _     o     w     �     �  �   �     }     �  
   �     �     �     �     �     �     �     �     �     �     �     �             @     9   \  )   �     �     �     �     �                            	   =     G     N     d     l     q     x       
   �  5   �  4   �  6        8     >  G   E  2  �  q   �     2   4   >   4   s      �     �      �3     �3     �3     4  a   4  �   t4     5      5  	   ;5     E5     W5     o5  �   �5     �6     �6     �6     �6     �6     �6     �6  	   �6     �6     �6     �6     7     7     $7     -7     67  ^   N7  N   �7  @   �7     =8     D8     d8     {8     �8     �8     �8     �8     �8  	   �8     �8  )   �8     9     9     9     "9     )9     89  %   D9  -   j9  (   �9     �9     �9  R   �9     (          1              %   /   '   ;                     $   "      0   +   9                                 6                  *   -   >   =   7       	       4   8      5                  2             &          
   3   .   !   :          ?          #                                            <      ,      )        ${object.create_uid.name} from ${object.company_id.name} invites you to connect to Patient Portal &amp;times; <i class="fa fa-plus text-sucess"/>Create Evaluation <i class="fa fa-times text-danger"/>Cancel the Appointment <i class="fa fa-times"/> Close <table border="0" cellpadding="0" cellspacing="0" style="padding-top: 16px; background-color: #F1F1F1; font-family:Verdana, Arial,sans-serif; color: #454748; width: 100%; border-collapse:separate;"><tr><td align="center">
<table border="0" cellpadding="0" cellspacing="0" width="590" style="padding: 16px; background-color: white; color: #454748; border-collapse:separate;">
<tbody>
    <!-- HEADER -->
    <tr>
        <td align="center" style="min-width: 590px;">
            <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: white; padding: 0px 8px 0px 8px; border-collapse:separate;">
                <tr><td valign="middle">
                    <span style="font-size: 10px;">Welcome to Patient Portal</span><br/>
                    <span style="font-size: 20px; font-weight: bold;">
                        ${object.name}
                    </span>
                </td><td valign="middle" align="right">
                    <img src="/logo.png?company=${object.company_id.id}" style="padding: 0px; margin: 0px; height: auto; width: 80px;" alt="${object.company_id.name}"/>
                </td></tr>
                <tr><td colspan="2" style="text-align:center;">
                  <hr width="100%" style="background-color:rgb(204,204,204);border:medium none;clear:both;display:block;font-size:0px;min-height:1px;line-height:0; margin: 16px 0px 16px 0px;"/>
                </td></tr>
            </table>
        </td>
    </tr>
    <!-- CONTENT -->
    <tr>
        <td align="center" style="min-width: 590px;">
            <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: white; padding: 0px 8px 0px 8px; border-collapse:separate;">
                <tr><td valign="top" style="font-size: 13px;">
                    <div>
                        Dear ${object.name},<br/><br/>
                        You have been invited by ${object.create_uid.name} of ${object.company_id.name} to connect on Patient Portal.
                        <div style="margin: 16px 0px 16px 0px;">
                            <a href="${object.signup_url}" style="background-color: #875A7B; padding: 8px 16px 8px 16px; text-decoration: none; color: #fff; border-radius: 5px; font-size:13px;">
                                Accept invitation
                            </a>
                        </div>
                        % set website_url = object.env['ir.config_parameter'].sudo().get_param('web.base.url')
                        Your Website is: <b><a href="${website_url}">${website_url}</a></b><br/>
                        Your sign in email is: <b><a href="/web/login?login=${object.email}" target="_blank">${object.email}</a></b>
                        <br/><br/>
                        Cheers!<br/>
                        --<br/>The ${object.company_id.name} Team
                    </div>
                </td></tr>
                <tr><td style="text-align:center;">
                  <hr width="100%" style="background-color:rgb(204,204,204);border:medium none;clear:both;display:block;font-size:0px;min-height:1px;line-height:0; margin: 16px 0px 16px 0px;"/>
                </td></tr>
            </table>
        </td>
    </tr>
    <!-- FOOTER -->
    <tr>
        <td align="center" style="min-width: 590px;">
            <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: white; font-size: 11px; padding: 0px 8px 0px 8px; border-collapse:separate;">
                <tr><td valign="middle" align="left">
                    ${object.company_id.name}
                </td></tr>
                <tr><td valign="middle" align="left" style="opacity: 0.7;">
                    ${object.company_id.phone}
                    % if object.company_id.email
                        | <a href="'mailto:%s' % ${object.company_id.email}" style="text-decoration:none; color: #454748;">${object.company_id.email}</a>
                    % endif
                    % if object.company_id.website
                        | <a href="'%s' % ${object.company_id.website}" style="text-decoration:none; color: #454748;">
                        ${object.company_id.website}
                    </a>
                    % endif
                </td></tr>
            </table>
        </td>
    </tr>
</tbody>
</table>
</td></tr>
<!-- POWERED BY -->
<tr><td align="center" style="min-width: 590px;">
    <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: #F1F1F1; color: #454748; padding: 8px; border-collapse:separate;">
      <tr><td style="text-align: center; font-size: 13px;">
        Powered by <a target="_blank" href="https://www.almightycs.com" style="color: #875A7B;">AlmightyCS</a>
      </td></tr>
    </table>
</td></tr>
</table> Age Appointment Date Appointments Cancel Appointment Cannot send email: user %s has no email address. Changing your name is not allowed once Prescriptions have been issued for your account. Please contact us directly for this operation. Close Config Settings Confirm Create Evaluation Create Portal User Create Users For Patients Create user for each patient when new patient is registered in system.
                                (Please do not forget to set email when creating patient else it will not create related user.) Diastolic BP Display Name Evaluation Evaluation Date Evaluations HR Height History Hospital ID Last Modified on Name Name # Newest Patient Patient Evaluation Patient have no related user in system! Please create one first. Patient/User already registered with given email address. Please define valid email for the Patient Portal Portal User Creation Prescription Date Prescription Report Prescriptions Print RR Reason Reason to cancel Appointment Reg. No # Report Send Invitation Email Service Spo2 Status Submit Systolic BP Temprature There are currently no Appointments for your account. There are currently no Evaluations for your account. There are currently no Prescriptions for your account. Users Weight You must have an email address in your User Preferences to send emails. Project-Id-Version: Odoo Server 14.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2021-06-05 01:56-0500
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 2.4.3
Last-Translator: 
Language: es
 ${object.create_uid.name} de ${object.company_id.name} le invita para conectarse a su Portal Personal de Paciente &amp;times; <i class="fa fa-plus text-sucess"/>Crear Evaluación <i class="fa fa-times text-danger"/>Cancelar la cita <i class="fa fa-times"/>Cerrar <table border="0" cellpadding="0" cellspacing="0" style="padding-top: 16px; background-color: #F1F1F1; font-family:Verdana, Arial,sans-serif; color: #454748; width: 100%; border-collapse:separate;"><tr><td align="center">
<table border="0" cellpadding="0" cellspacing="0" width="590" style="padding: 16px; background-color: white; color: #454748; border-collapse:separate;">
<tbody>
    <!-- HEADER -->
    <tr>
        <td align="center" style="min-width: 590px;">
            <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: white; padding: 0px 8px 0px 8px; border-collapse:separate;">
                <tr><td valign="middle">
                    <span style="font-size: 10px;">Bienvenido al Portal de Paciente</span><br/>
                    <span style="font-size: 20px; font-weight: bold;">
                        ${object.name}
                    </span>
                </td><td valign="middle" align="right">
                    <img src="/logo.png?company=${object.company_id.id}" style="padding: 0px; margin: 0px; height: auto; width: 80px;" alt="${object.company_id.name}"/>
                </td></tr>
                <tr><td colspan="2" style="text-align:center;">
                  <hr width="100%" style="background-color:rgb(204,204,204);border:medium none;clear:both;display:block;font-size:0px;min-height:1px;line-height:0; margin: 16px 0px 16px 0px;"/>
                </td></tr>
            </table>
        </td>
    </tr>
    <!-- CONTENT -->
    <tr>
        <td align="center" style="min-width: 590px;">
            <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: white; padding: 0px 8px 0px 8px; border-collapse:separate;">
                <tr><td valign="top" style="font-size: 13px;">
                    <div>
                        Estimado/a ${object.name},<br/><br/>
                        Usted ha sido invitado por ${object.create_uid.name} de ${object.company_id.name} para conectarse a su Portal Personal de Paciente.
                        <div style="margin: 16px 0px 16px 0px;">
                            <a href="${object.signup_url}" style="background-color: #875A7B; padding: 8px 16px 8px 16px; text-decoration: none; color: #fff; border-radius: 5px; font-size:13px;">
                                Aceptar invitación
                            </a>
                        </div>
                        % set website_url = object.env['ir.config_parameter'].sudo().get_param('web.base.url')
                        Tu sitio Web es: <b><a href="${website_url}">${website_url}</a></b><br/>
                        Tu email de acceso es: <b><a href="/web/login?login=${object.email}" target="_blank">${object.email}</a></b>
                        <br/><br/>
                        Disfrute!<br/>
                        --<br/>The ${object.company_id.name} Team
                    </div>
                </td></tr>
                <tr><td style="text-align:center;">
                  <hr width="100%" style="background-color:rgb(204,204,204);border:medium none;clear:both;display:block;font-size:0px;min-height:1px;line-height:0; margin: 16px 0px 16px 0px;"/>
                </td></tr>
            </table>
        </td>
    </tr>
    <!-- FOOTER -->
    <tr>
        <td align="center" style="min-width: 590px;">
            <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: white; font-size: 11px; padding: 0px 8px 0px 8px; border-collapse:separate;">
                <tr><td valign="middle" align="left">
                    ${object.company_id.name}
                </td></tr>
                <tr><td valign="middle" align="left" style="opacity: 0.7;">
                    ${object.company_id.phone}
                    % if object.company_id.email
                        | <a href="'mailto:%s' % ${object.company_id.email}" style="text-decoration:none; color: #454748;">${object.company_id.email}</a>
                    % endif
                    % if object.company_id.website
                        | <a href="'%s' % ${object.company_id.website}" style="text-decoration:none; color: #454748;">
                        ${object.company_id.website}
                    </a>
                    % endif
                </td></tr>
            </table>
        </td>
    </tr>
</tbody>
</table>
</td></tr>
<!-- POWERED BY -->
<tr><td align="center" style="min-width: 590px;">
    <table border="0" cellpadding="0" cellspacing="0" width="590" style="min-width: 590px; background-color: #F1F1F1; color: #454748; padding: 8px; border-collapse:separate;">
      <tr><td style="text-align: center; font-size: 13px;">
        Powered by <a target="_blank" href="https://medicred.site" style="color: #875A7B;">MedicRed</a>
      </td></tr>
    </table>
</td></tr>
</table> Edad Fecha de la Cita Citas Cancelar reserva No se puede enviar correo electrónico: el usuario %s no tiene dirección de correo electrónico. No se permite cambiar su nombre una vez que se hayan emitido recetas para su cuenta. Por favor, póngase en contacto con nosotros directamente para esta operación. Cerrar Opciones de configuración Confirmar Crear Evaluación Crear usuario de portal Crear usuarios para pacientes Crear usuario para cada paciente cuando se registra un nuevo paciente en el sistema.
                                (Por favor, no se olvide de establecer el correo electrónico al crear el paciente de lo contrario no creará el usuario relacionado.) PA Diastólica Nombre  Evaluación Fecha de evaluación Evaluaciones FC Altura Historial Hospital Identificación Última modificación en Nombre Nombre # Reciente Paciente Evaluación de Paciente ¡El paciente no tiene ningún usuario relacionado en el sistema! Por favor, cree uno primero. Paciente/Usuario ya registrado con dirección de correo electrónico asignada. Por favor defina un correo electrónico válido para el Paciente Portal Creación de usuarios de portal Fecha de prescripción Informe de Aplicación Prescripciones Imprimir FR Motivo Motivo para cancelar la cita Reg. No # Informe Enviar correo electrónico de invitación Servicio SpO2 Estado Enviar PA Sistólica  Temperatura Actualmente no hay cita en su cuenta. Actualmente no hay evaluaciones en su cuenta. Actualmente no hay recetas en su cuenta. Usuarios Peso Debe tener una dirección email en sus preferencias de usuario para enviar emails. 