
package Paws::RDS::CreateDBSecurityGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Paws::RDS::DBSecurityGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBSecurityGroupResult

=head1 ATTRIBUTES

=head2 DBSecurityGroup => Paws::RDS::DBSecurityGroup

  


=cut

