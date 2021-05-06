
package Paws::Lightsail::GetInstanceSnapshotResult;
  use Moose;
  has InstanceSnapshot => (is => 'ro', isa => 'Paws::Lightsail::InstanceSnapshot', traits => ['NameInRequest'], request_name => 'instanceSnapshot' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceSnapshotResult

=head1 ATTRIBUTES


=head2 InstanceSnapshot => L<Paws::Lightsail::InstanceSnapshot>

An array of key-value pairs containing information about the results of
your get instance snapshot request.


=head2 _request_id => Str


=cut

1;