
package Paws::AutoScaling::ActivitiesType;
  use Moose;
  has Activities => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Activity]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ActivitiesType

=head1 ATTRIBUTES


=head2 B<REQUIRED> Activities => ArrayRef[L<Paws::AutoScaling::Activity>]

The scaling activities. Activities are sorted by start time. Activities
still in progress are described first.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

