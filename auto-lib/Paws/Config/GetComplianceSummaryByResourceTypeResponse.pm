
package Paws::Config::GetComplianceSummaryByResourceTypeResponse;
  use Moose;
  has ComplianceSummariesByResourceType => (is => 'ro', isa => 'ArrayRef[Paws::Config::ComplianceSummaryByResourceType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceSummaryByResourceTypeResponse

=head1 ATTRIBUTES


=head2 ComplianceSummariesByResourceType => ArrayRef[L<Paws::Config::ComplianceSummaryByResourceType>]

The number of resources that are compliant and the number that are
noncompliant. If one or more resource types were provided with the
request, the numbers are returned for each resource type. The maximum
number returned is 100.


=head2 _request_id => Str


=cut

1;