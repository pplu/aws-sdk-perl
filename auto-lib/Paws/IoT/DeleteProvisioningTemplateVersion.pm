
package Paws::IoT::DeleteProvisioningTemplateVersion;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateName', required => 1);
  has VersionId => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'versionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProvisioningTemplateVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates/{templateName}/versions/{versionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteProvisioningTemplateVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteProvisioningTemplateVersion - Arguments for method DeleteProvisioningTemplateVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProvisioningTemplateVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteProvisioningTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProvisioningTemplateVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteProvisioningTemplateVersionResponse =
      $iot->DeleteProvisioningTemplateVersion(
      TemplateName => 'MyTemplateName',
      VersionId    => 1,

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteProvisioningTemplateVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the fleet provisioning template version to delete.



=head2 B<REQUIRED> VersionId => Int

The fleet provisioning template version ID to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProvisioningTemplateVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

