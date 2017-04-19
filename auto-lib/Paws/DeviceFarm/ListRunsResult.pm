
package Paws::DeviceFarm::ListRunsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Runs => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Run]', traits => ['NameInRequest'], request_name => 'runs' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListRunsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Runs => ArrayRef[L<Paws::DeviceFarm::Run>]

Information about the runs.


=head2 _request_id => Str


=cut

1;