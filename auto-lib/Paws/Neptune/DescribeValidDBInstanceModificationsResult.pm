
package Paws::Neptune::DescribeValidDBInstanceModificationsResult;
  use Moose;
  has ValidDBInstanceModificationsMessage => (is => 'ro', isa => 'Paws::Neptune::ValidDBInstanceModificationsMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeValidDBInstanceModificationsResult

=head1 ATTRIBUTES


=head2 ValidDBInstanceModificationsMessage => L<Paws::Neptune::ValidDBInstanceModificationsMessage>




=head2 _request_id => Str


=cut

