
package Paws::SMS::GetConnectorsResponse;
  use Moose;
  has ConnectorList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Connector]', traits => ['Unwrapped'], xmlname => 'connectorList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetConnectorsResponse

=head1 ATTRIBUTES


=head2 ConnectorList => ArrayRef[L<Paws::SMS::Connector>]





=head2 NextToken => Str






=cut

1;