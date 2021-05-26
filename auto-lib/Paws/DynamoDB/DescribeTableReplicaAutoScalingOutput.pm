
package Paws::DynamoDB::DescribeTableReplicaAutoScalingOutput;
  use Moose;
  has TableAutoScalingDescription => (is => 'ro', isa => 'Paws::DynamoDB::TableAutoScalingDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTableReplicaAutoScalingOutput

=head1 ATTRIBUTES


=head2 TableAutoScalingDescription => L<Paws::DynamoDB::TableAutoScalingDescription>

Represents the auto scaling properties of the table.


=head2 _request_id => Str


=cut

1;