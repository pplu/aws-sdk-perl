
package Paws::Greengrass::ListResourceDefinitionVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ResourceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceDefinitionVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/resources/{ResourceDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ListResourceDefinitionVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListResourceDefinitionVersions - Arguments for method ListResourceDefinitionVersions on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceDefinitionVersions on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method ListResourceDefinitionVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceDefinitionVersions.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $ListResourceDefinitionVersionsResponse =
      $greengrass->ListResourceDefinitionVersions(
      ResourceDefinitionId => 'My__string',
      MaxResults           => 'My__string',    # OPTIONAL
      NextToken            => 'My__string',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceDefinitionVersionsResponse->NextToken;
    my $Versions  = $ListResourceDefinitionVersionsResponse->Versions;

 # Returns a L<Paws::Greengrass::ListResourceDefinitionVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListResourceDefinitionVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Str

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.



=head2 B<REQUIRED> ResourceDefinitionId => Str

The ID of the resource definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceDefinitionVersions in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

