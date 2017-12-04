
package Paws::DAX::DescribeParameterGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::DAX::ParameterGroup]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeParameterGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ParameterGroups => ArrayRef[L<Paws::DAX::ParameterGroup>]

An array of parameter groups. Each element in the array represents one
parameter group.


=head2 _request_id => Str


=cut

1;