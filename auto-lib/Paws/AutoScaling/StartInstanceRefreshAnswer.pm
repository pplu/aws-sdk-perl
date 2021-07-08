
package Paws::AutoScaling::StartInstanceRefreshAnswer;
  use Moose;
  has InstanceRefreshId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::StartInstanceRefreshAnswer

=head1 ATTRIBUTES


=head2 InstanceRefreshId => Str

A unique ID for tracking the progress of the request.


=head2 _request_id => Str


=cut

