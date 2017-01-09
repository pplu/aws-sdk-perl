
package Paws::AutoScaling::ActivityType;
  use Moose;
  has Activity => (is => 'ro', isa => 'Paws::AutoScaling::Activity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ActivityType

=head1 ATTRIBUTES


=head2 Activity => L<Paws::AutoScaling::Activity>

A scaling activity.


=head2 _request_id => Str


=cut

