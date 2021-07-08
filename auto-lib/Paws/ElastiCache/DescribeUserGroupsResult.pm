
package Paws::ElastiCache::DescribeUserGroupsResult;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::UserGroup]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeUserGroupsResult

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords. E<gt>


=head2 UserGroups => ArrayRef[L<Paws::ElastiCache::UserGroup>]

Returns a list of user groups.


=head2 _request_id => Str


=cut

