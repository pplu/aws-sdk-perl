
package Paws::RedShift::CreateClusterSubnetGroupResult;
  use Moose;
  has ClusterSubnetGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterSubnetGroupResult

=head1 ATTRIBUTES


=head2 ClusterSubnetGroup => L<Paws::RedShift::ClusterSubnetGroup>




=head2 _request_id => Str


=cut

