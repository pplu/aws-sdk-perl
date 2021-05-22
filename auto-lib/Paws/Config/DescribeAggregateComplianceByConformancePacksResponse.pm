
package Paws::Config::DescribeAggregateComplianceByConformancePacksResponse;
  use Moose;
  has AggregateComplianceByConformancePacks => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateComplianceByConformancePack]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeAggregateComplianceByConformancePacksResponse

=head1 ATTRIBUTES


=head2 AggregateComplianceByConformancePacks => ArrayRef[L<Paws::Config::AggregateComplianceByConformancePack>]

Returns the C<AggregateComplianceByConformancePack> object.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;