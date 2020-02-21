
package Paws::DeviceFarm::ListTestGridSessionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TestGridSessions => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::TestGridSession]', traits => ['NameInRequest'], request_name => 'testGridSessions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token.


=head2 TestGridSessions => ArrayRef[L<Paws::DeviceFarm::TestGridSession>]

The sessions that match the criteria in a ListTestGridSessionsRequest.


=head2 _request_id => Str


=cut

1;