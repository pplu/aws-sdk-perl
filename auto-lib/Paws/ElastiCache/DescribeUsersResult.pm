
package Paws::ElastiCache::DescribeUsersResult;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::User]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeUsersResult

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by MaxRecords. E<gt>


=head2 Users => ArrayRef[L<Paws::ElastiCache::User>]

A list of users.


=head2 _request_id => Str


=cut

