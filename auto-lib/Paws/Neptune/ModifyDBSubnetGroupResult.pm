
package Paws::Neptune::ModifyDBSubnetGroupResult;
  use Moose;
  has DBSubnetGroup => (is => 'ro', isa => 'Paws::Neptune::DBSubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyDBSubnetGroupResult

=head1 ATTRIBUTES


=head2 DBSubnetGroup => L<Paws::Neptune::DBSubnetGroup>




=head2 _request_id => Str


=cut

