
package Paws::RDS::CreateDBSecurityGroupResult;
  use Moose;
  has DBSecurityGroup => (is => 'ro', isa => 'Paws::RDS::DBSecurityGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBSecurityGroupResult

=head1 ATTRIBUTES


=head2 DBSecurityGroup => L<Paws::RDS::DBSecurityGroup>




=head2 _request_id => Str


=cut

