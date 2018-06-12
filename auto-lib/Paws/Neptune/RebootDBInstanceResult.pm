
package Paws::Neptune::RebootDBInstanceResult;
  use Moose;
  has DBInstance => (is => 'ro', isa => 'Paws::Neptune::DBInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RebootDBInstanceResult

=head1 ATTRIBUTES


=head2 DBInstance => L<Paws::Neptune::DBInstance>




=head2 _request_id => Str


=cut

