
package Paws::IoT::UpdateProvisioningTemplate;
  use Moose;
  has DefaultVersionId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultVersionId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has PreProvisioningHook => (is => 'ro', isa => 'Paws::IoT::ProvisioningHook', traits => ['NameInRequest'], request_name => 'preProvisioningHook');
  has ProvisioningRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioningRoleArn');
  has RemovePreProvisioningHook => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removePreProvisioningHook');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProvisioningTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates/{templateName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateProvisioningTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateProvisioningTemplate - Arguments for method UpdateProvisioningTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProvisioningTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateProvisioningTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProvisioningTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateProvisioningTemplateResponse = $iot->UpdateProvisioningTemplate(
      TemplateName        => 'MyTemplateName',
      DefaultVersionId    => 1,                          # OPTIONAL
      Description         => 'MyTemplateDescription',    # OPTIONAL
      Enabled             => 1,                          # OPTIONAL
      PreProvisioningHook => {
        TargetArn      => 'MyTargetArn',         # max: 2048
        PayloadVersion => 'MyPayloadVersion',    # min: 10, max: 32; OPTIONAL
      },    # OPTIONAL
      ProvisioningRoleArn       => 'MyRoleArn',    # OPTIONAL
      RemovePreProvisioningHook => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateProvisioningTemplate>

=head1 ATTRIBUTES


=head2 DefaultVersionId => Int

The ID of the default provisioning template version.



=head2 Description => Str

The description of the fleet provisioning template.



=head2 Enabled => Bool

True to enable the fleet provisioning template, otherwise false.



=head2 PreProvisioningHook => L<Paws::IoT::ProvisioningHook>

Updates the pre-provisioning hook template.



=head2 ProvisioningRoleArn => Str

The ARN of the role associated with the provisioning template. This IoT
role grants permission to provision a device.



=head2 RemovePreProvisioningHook => Bool

Removes pre-provisioning hook template.



=head2 B<REQUIRED> TemplateName => Str

The name of the fleet provisioning template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProvisioningTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

