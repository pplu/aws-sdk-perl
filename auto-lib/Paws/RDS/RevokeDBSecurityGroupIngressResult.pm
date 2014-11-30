
package Paws::RDS::RevokeDBSecurityGroupIngressResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Paws::RDS::DBSecurityGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RevokeDBSecurityGroupIngressResult

=head1 ATTRIBUTES

=head2 DBSecurityGroup => Paws::RDS::DBSecurityGroup

  


=cut

