
package Paws::RDS::CreateDBSubnetGroupResult;
  use Moose;
  has DBSubnetGroup => (is => 'ro', isa => 'Paws::RDS::DBSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBSubnetGroupResult

=head1 ATTRIBUTES


=head2 DBSubnetGroup => L<Paws::RDS::DBSubnetGroup>




=head2 _request_id => Str


=cut

