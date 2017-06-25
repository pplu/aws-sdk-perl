
package Paws::DAX::UpdateSubnetGroupResponse;
  use Moose;
  has SubnetGroup => (is => 'ro', isa => 'Paws::DAX::SubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateSubnetGroupResponse

=head1 ATTRIBUTES


=head2 SubnetGroup => L<Paws::DAX::SubnetGroup>

The subnet group that has been modified.


=head2 _request_id => Str


=cut

1;