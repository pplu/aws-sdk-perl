
package Paws::SMS::GetConnectorsResponse;
  use Moose;
  has ConnectorList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Connector]', traits => ['NameInRequest'], request_name => 'connectorList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetConnectorsResponse

=head1 ATTRIBUTES


=head2 ConnectorList => ArrayRef[L<Paws::SMS::Connector>]

Information about the registered connectors.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;