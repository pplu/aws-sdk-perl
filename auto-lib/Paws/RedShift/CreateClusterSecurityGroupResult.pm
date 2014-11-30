
package Paws::RedShift::CreateClusterSecurityGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterSecurityGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateClusterSecurityGroupResult

=head1 ATTRIBUTES

=head2 ClusterSecurityGroup => Paws::RedShift::ClusterSecurityGroup

  


=cut

