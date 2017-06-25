
package Paws::DAX::CreateSubnetGroupResponse;
  use Moose;
  has SubnetGroup => (is => 'ro', isa => 'Paws::DAX::SubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::CreateSubnetGroupResponse

=head1 ATTRIBUTES


=head2 SubnetGroup => L<Paws::DAX::SubnetGroup>

Represents the output of a I<CreateSubnetGroup> operation.


=head2 _request_id => Str


=cut

1;