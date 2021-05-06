
package Paws::RedShift::RevokeClusterSecurityGroupIngressResult;
  use Moose;
  has ClusterSecurityGroup => (is => 'ro', isa => 'Paws::RedShift::ClusterSecurityGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RevokeClusterSecurityGroupIngressResult

=head1 ATTRIBUTES


=head2 ClusterSecurityGroup => L<Paws::RedShift::ClusterSecurityGroup>




=head2 _request_id => Str


=cut

