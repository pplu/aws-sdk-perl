
package Paws::AutoScaling::CancelInstanceRefreshAnswer;
  use Moose;
  has InstanceRefreshId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CancelInstanceRefreshAnswer

=head1 ATTRIBUTES


=head2 InstanceRefreshId => Str

The instance refresh ID.


=head2 _request_id => Str


=cut

