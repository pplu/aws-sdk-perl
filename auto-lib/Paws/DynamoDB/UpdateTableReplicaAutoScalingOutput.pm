
package Paws::DynamoDB::UpdateTableReplicaAutoScalingOutput;
  use Moose;
  has TableAutoScalingDescription => (is => 'ro', isa => 'Paws::DynamoDB::TableAutoScalingDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTableReplicaAutoScalingOutput

=head1 ATTRIBUTES


=head2 TableAutoScalingDescription => L<Paws::DynamoDB::TableAutoScalingDescription>

Returns information about the auto scaling settings of a table with
replicas.


=head2 _request_id => Str


=cut

1;