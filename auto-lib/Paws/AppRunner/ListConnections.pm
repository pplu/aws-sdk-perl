
package Paws::AppRunner::ListConnections;
  use Moose;
  has ConnectionName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::ListConnectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListConnections - Arguments for method ListConnections on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnections on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method ListConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnections.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $ListConnectionsResponse = $apprunner->ListConnections(
      ConnectionName => 'MyConnectionName',    # OPTIONAL
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $ConnectionSummaryList = $ListConnectionsResponse->ConnectionSummaryList;
    my $NextToken             = $ListConnectionsResponse->NextToken;

    # Returns a L<Paws::AppRunner::ListConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/ListConnections>

=head1 ATTRIBUTES


=head2 ConnectionName => Str

If specified, only this connection is returned. If not specified, the
result isn't filtered by name.



=head2 MaxResults => Int

The maximum number of results to include in each response (result
page). Used for a paginated request.

If you don't specify C<MaxResults>, the request retrieves all available
results in a single response.



=head2 NextToken => Str

A token from a previous result page. Used for a paginated request. The
request retrieves the next result page. All other parameter values must
be identical to the ones specified in the initial request.

If you don't specify C<NextToken>, the request retrieves the first
result page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnections in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

