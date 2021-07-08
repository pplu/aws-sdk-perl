
package Paws::XRay::GetInsightImpactGraphResult;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has InsightId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceGraphEndTime => (is => 'ro', isa => 'Str');
  has ServiceGraphStartTime => (is => 'ro', isa => 'Str');
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::XRay::InsightImpactGraphService]');
  has StartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsightImpactGraphResult

=head1 ATTRIBUTES


=head2 EndTime => Str

The provided end time.


=head2 InsightId => Str

The insight's unique identifier.


=head2 NextToken => Str

Pagination token.


=head2 ServiceGraphEndTime => Str

The time, in Unix seconds, at which the service graph ended.


=head2 ServiceGraphStartTime => Str

The time, in Unix seconds, at which the service graph started.


=head2 Services => ArrayRef[L<Paws::XRay::InsightImpactGraphService>]

The AWS instrumented services related to the insight.


=head2 StartTime => Str

The provided start time.


=head2 _request_id => Str


=cut

