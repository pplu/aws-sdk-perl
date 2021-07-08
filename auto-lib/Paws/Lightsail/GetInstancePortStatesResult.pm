
package Paws::Lightsail::GetInstancePortStatesResult;
  use Moose;
  has PortStates => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::InstancePortState]', traits => ['NameInRequest'], request_name => 'portStates' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstancePortStatesResult

=head1 ATTRIBUTES


=head2 PortStates => ArrayRef[L<Paws::Lightsail::InstancePortState>]

An array of objects that describe the firewall port states for the
specified instance.


=head2 _request_id => Str


=cut

1;