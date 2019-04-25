
package Paws::RDS::DeleteGlobalClusterResult;
  use Moose;
  has GlobalCluster => (is => 'ro', isa => 'Paws::RDS::GlobalCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteGlobalClusterResult

=head1 ATTRIBUTES


=head2 GlobalCluster => L<Paws::RDS::GlobalCluster>




=head2 _request_id => Str


=cut

