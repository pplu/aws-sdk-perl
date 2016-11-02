
package Paws::EMR::DescribeClusterOutput;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::EMR::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeClusterOutput

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::EMR::Cluster>

This output contains the details for the requested cluster.


=head2 _request_id => Str


=cut

1;