
package Paws::RDS::DescribeDBClusterSnapshotAttributesResult;
  use Moose;
  has DBClusterSnapshotAttributesResult => (is => 'ro', isa => 'Paws::RDS::DBClusterSnapshotAttributesResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterSnapshotAttributesResult

=head1 ATTRIBUTES


=head2 DBClusterSnapshotAttributesResult => L<Paws::RDS::DBClusterSnapshotAttributesResult>




=head2 _request_id => Str


=cut

