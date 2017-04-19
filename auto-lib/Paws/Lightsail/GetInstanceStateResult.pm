
package Paws::Lightsail::GetInstanceStateResult;
  use Moose;
  has State => (is => 'ro', isa => 'Paws::Lightsail::InstanceState', traits => ['NameInRequest'], request_name => 'state' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceStateResult

=head1 ATTRIBUTES


=head2 State => L<Paws::Lightsail::InstanceState>

The state of the instance.


=head2 _request_id => Str


=cut

1;