
package Paws::DeviceFarm::ListTestGridSessionActionsResult;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::TestGridSessionAction]', traits => ['NameInRequest'], request_name => 'actions' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridSessionActionsResult

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::DeviceFarm::TestGridSessionAction>]

The action taken by the session.


=head2 NextToken => Str

Pagination token.


=head2 _request_id => Str


=cut

1;