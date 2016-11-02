
package Paws::RedShift::CreateClusterParameterGroupResult;
  use Moose;
  has ClusterParameterGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 ClusterParameterGroup => L<Paws::RedShift::ClusterParameterGroup>




=head2 _request_id => Str


=cut

