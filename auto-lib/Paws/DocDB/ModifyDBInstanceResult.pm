
package Paws::DocDB::ModifyDBInstanceResult;
  use Moose;
  has DBInstance => (is => 'ro', isa => 'Paws::DocDB::DBInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyDBInstanceResult

=head1 ATTRIBUTES


=head2 DBInstance => L<Paws::DocDB::DBInstance>




=head2 _request_id => Str


=cut

