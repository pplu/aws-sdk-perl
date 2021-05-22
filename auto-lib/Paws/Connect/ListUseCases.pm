
package Paws::Connect::ListUseCases;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has IntegrationAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IntegrationAssociationId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUseCases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListUseCasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUseCases - Arguments for method ListUseCases on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUseCases on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListUseCases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUseCases.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListUseCasesResponse = $connect->ListUseCases(
      InstanceId               => 'MyInstanceId',
      IntegrationAssociationId => 'MyIntegrationAssociationId',
      MaxResults               => 1,                              # OPTIONAL
      NextToken                => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $NextToken          = $ListUseCasesResponse->NextToken;
    my $UseCaseSummaryList = $ListUseCasesResponse->UseCaseSummaryList;

    # Returns a L<Paws::Connect::ListUseCasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListUseCases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> IntegrationAssociationId => Str

The identifier for the integration association.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUseCases in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

