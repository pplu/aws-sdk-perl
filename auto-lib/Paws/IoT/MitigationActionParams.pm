# Generated from default/object.tt
package Paws::IoT::MitigationActionParams;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoT::Types qw/IoT_AddThingsToThingGroupParams IoT_ReplaceDefaultPolicyVersionParams IoT_UpdateCACertificateParams IoT_UpdateDeviceCertificateParams IoT_EnableIoTLoggingParams IoT_PublishFindingToSnsParams/;
  has AddThingsToThingGroupParams => (is => 'ro', isa => IoT_AddThingsToThingGroupParams);
  has EnableIoTLoggingParams => (is => 'ro', isa => IoT_EnableIoTLoggingParams);
  has PublishFindingToSnsParams => (is => 'ro', isa => IoT_PublishFindingToSnsParams);
  has ReplaceDefaultPolicyVersionParams => (is => 'ro', isa => IoT_ReplaceDefaultPolicyVersionParams);
  has UpdateCACertificateParams => (is => 'ro', isa => IoT_UpdateCACertificateParams);
  has UpdateDeviceCertificateParams => (is => 'ro', isa => IoT_UpdateDeviceCertificateParams);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublishFindingToSnsParams' => {
                                                'class' => 'Paws::IoT::PublishFindingToSnsParams',
                                                'type' => 'IoT_PublishFindingToSnsParams'
                                              },
               'UpdateDeviceCertificateParams' => {
                                                    'class' => 'Paws::IoT::UpdateDeviceCertificateParams',
                                                    'type' => 'IoT_UpdateDeviceCertificateParams'
                                                  },
               'AddThingsToThingGroupParams' => {
                                                  'class' => 'Paws::IoT::AddThingsToThingGroupParams',
                                                  'type' => 'IoT_AddThingsToThingGroupParams'
                                                },
               'UpdateCACertificateParams' => {
                                                'type' => 'IoT_UpdateCACertificateParams',
                                                'class' => 'Paws::IoT::UpdateCACertificateParams'
                                              },
               'ReplaceDefaultPolicyVersionParams' => {
                                                        'class' => 'Paws::IoT::ReplaceDefaultPolicyVersionParams',
                                                        'type' => 'IoT_ReplaceDefaultPolicyVersionParams'
                                                      },
               'EnableIoTLoggingParams' => {
                                             'type' => 'IoT_EnableIoTLoggingParams',
                                             'class' => 'Paws::IoT::EnableIoTLoggingParams'
                                           }
             },
  'NameInRequest' => {
                       'PublishFindingToSnsParams' => 'publishFindingToSnsParams',
                       'EnableIoTLoggingParams' => 'enableIoTLoggingParams',
                       'UpdateDeviceCertificateParams' => 'updateDeviceCertificateParams',
                       'UpdateCACertificateParams' => 'updateCACertificateParams',
                       'ReplaceDefaultPolicyVersionParams' => 'replaceDefaultPolicyVersionParams',
                       'AddThingsToThingGroupParams' => 'addThingsToThingGroupParams'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::MitigationActionParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::MitigationActionParams object:

  $service_obj->Method(Att1 => { AddThingsToThingGroupParams => $value, ..., UpdateDeviceCertificateParams => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::MitigationActionParams object:

  $result = $service_obj->Method(...);
  $result->Att1->AddThingsToThingGroupParams

=head1 DESCRIPTION

The set of parameters for this mitigation action. You can specify only
one type of parameter (in other words, you can apply only one action
for each defined mitigation action).

=head1 ATTRIBUTES


=head2 AddThingsToThingGroupParams => IoT_AddThingsToThingGroupParams

  Parameters to define a mitigation action that moves devices associated
with a certificate to one or more specified thing groups, typically for
quarantine.


=head2 EnableIoTLoggingParams => IoT_EnableIoTLoggingParams

  Parameters to define a mitigation action that enables AWS IoT logging
at a specified level of detail.


=head2 PublishFindingToSnsParams => IoT_PublishFindingToSnsParams

  Parameters to define a mitigation action that publishes findings to
Amazon SNS. You can implement your own custom actions in response to
the Amazon SNS messages.


=head2 ReplaceDefaultPolicyVersionParams => IoT_ReplaceDefaultPolicyVersionParams

  Parameters to define a mitigation action that adds a blank policy to
restrict permissions.


=head2 UpdateCACertificateParams => IoT_UpdateCACertificateParams

  Parameters to define a mitigation action that changes the state of the
CA certificate to inactive.


=head2 UpdateDeviceCertificateParams => IoT_UpdateDeviceCertificateParams

  Parameters to define a mitigation action that changes the state of the
device certificate to inactive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

