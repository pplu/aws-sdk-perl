
package Paws::RDS::DescribeValidDBInstanceModificationsResult;
  use Moose;
  has ValidDBInstanceModificationsMessage => (is => 'ro', isa => 'Paws::RDS::ValidDBInstanceModificationsMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeValidDBInstanceModificationsResult

=head1 ATTRIBUTES


=head2 ValidDBInstanceModificationsMessage => L<Paws::RDS::ValidDBInstanceModificationsMessage>




=head2 _request_id => Str


=cut

