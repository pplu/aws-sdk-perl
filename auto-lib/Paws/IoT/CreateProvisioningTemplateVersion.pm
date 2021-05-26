
package Paws::IoT::CreateProvisioningTemplateVersion;
  use Moose;
  has SetAsDefault => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsDefault');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisioningTemplateVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates/{templateName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateProvisioningTemplateVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningTemplateVersion - Arguments for method CreateProvisioningTemplateVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisioningTemplateVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateProvisioningTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisioningTemplateVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateProvisioningTemplateVersionResponse =
      $iot->CreateProvisioningTemplateVersion(
      TemplateBody => 'MyTemplateBody',
      TemplateName => 'MyTemplateName',
      SetAsDefault => 1,                  # OPTIONAL
      );

    # Results:
    my $IsDefaultVersion =
      $CreateProvisioningTemplateVersionResponse->IsDefaultVersion;
    my $TemplateArn  = $CreateProvisioningTemplateVersionResponse->TemplateArn;
    my $TemplateName = $CreateProvisioningTemplateVersionResponse->TemplateName;
    my $VersionId    = $CreateProvisioningTemplateVersionResponse->VersionId;

    # Returns a L<Paws::IoT::CreateProvisioningTemplateVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateProvisioningTemplateVersion>

=head1 ATTRIBUTES


=head2 SetAsDefault => Bool

Sets a fleet provision template version as the default version.



=head2 B<REQUIRED> TemplateBody => Str

The JSON formatted contents of the fleet provisioning template.



=head2 B<REQUIRED> TemplateName => Str

The name of the fleet provisioning template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisioningTemplateVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

