
package Paws::RedShift::CreateClusterParameterGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterParameterGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterParameterGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterParameterGroupResult

=head1 ATTRIBUTES

=head2 ClusterParameterGroup => Paws::RedShift::ClusterParameterGroup

  


=cut

