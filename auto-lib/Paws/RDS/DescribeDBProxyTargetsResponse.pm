
package Paws::RDS::DescribeDBProxyTargetsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBProxyTarget]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBProxyTargetsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 Targets => ArrayRef[L<Paws::RDS::DBProxyTarget>]

An arbitrary number of C<DBProxyTarget> objects, containing details of
the corresponding targets.


=head2 _request_id => Str


=cut

