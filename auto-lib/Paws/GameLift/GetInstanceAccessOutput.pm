
package Paws::GameLift::GetInstanceAccessOutput;
  use Moose;
  has InstanceAccess => (is => 'ro', isa => 'Paws::GameLift::InstanceAccess');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetInstanceAccessOutput

=head1 ATTRIBUTES


=head2 InstanceAccess => L<Paws::GameLift::InstanceAccess>

Object that contains connection information for a fleet instance,
including IP address and access credentials.


=head2 _request_id => Str


=cut

1;