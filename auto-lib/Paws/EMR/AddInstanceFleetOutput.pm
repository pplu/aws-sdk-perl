
package Paws::EMR::AddInstanceFleetOutput;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has InstanceFleetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddInstanceFleetOutput

=head1 ATTRIBUTES


=head2 ClusterId => Str

The unique identifier of the cluster.


=head2 InstanceFleetId => Str

The unique identifier of the instance fleet.


=head2 _request_id => Str


=cut

1;