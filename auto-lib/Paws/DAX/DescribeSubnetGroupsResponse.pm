
package Paws::DAX::DescribeSubnetGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::DAX::SubnetGroup]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeSubnetGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 SubnetGroups => ArrayRef[L<Paws::DAX::SubnetGroup>]

An array of subnet groups. Each element in the array represents a
single subnet group.


=head2 _request_id => Str


=cut

1;