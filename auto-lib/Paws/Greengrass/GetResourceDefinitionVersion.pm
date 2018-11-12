
package Paws::Greengrass::GetResourceDefinitionVersion;
  use Moose;
  has ResourceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceDefinitionId', required => 1);
  has ResourceDefinitionVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceDefinitionVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetResourceDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetResourceDefinitionVersion - Arguments for method GetResourceDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetResourceDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetResourceDefinitionVersionResponse =
      $greengrass->GetResourceDefinitionVersion(
      ResourceDefinitionId        => 'My__string',
      ResourceDefinitionVersionId => 'My__string',

      );

    # Results:
    my $Arn = $GetResourceDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $GetResourceDefinitionVersionResponse->CreationTimestamp;
    my $Definition = $GetResourceDefinitionVersionResponse->Definition;
    my $Id         = $GetResourceDefinitionVersionResponse->Id;
    my $Version    = $GetResourceDefinitionVersionResponse->Version;

   # Returns a L<Paws::Greengrass::GetResourceDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetResourceDefinitionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceDefinitionId => Str

The ID of the resource definition.



=head2 B<REQUIRED> ResourceDefinitionVersionId => Str

The ID of the resource definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

