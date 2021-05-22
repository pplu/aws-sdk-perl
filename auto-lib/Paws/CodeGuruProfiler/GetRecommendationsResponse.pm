
package Paws::CodeGuruProfiler::GetRecommendationsResponse;
  use Moose;
  has Anomalies => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::Anomaly]', traits => ['NameInRequest'], request_name => 'anomalies', required => 1);
  has ProfileEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileEndTime', required => 1);
  has ProfileStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileStartTime', required => 1);
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profilingGroupName', required => 1);
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::Recommendation]', traits => ['NameInRequest'], request_name => 'recommendations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetRecommendationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Anomalies => ArrayRef[L<Paws::CodeGuruProfiler::Anomaly>]

The list of anomalies that the analysis has found for this profile.


=head2 B<REQUIRED> ProfileEndTime => Str

The end time of the profile the analysis data is about. This is
specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.


=head2 B<REQUIRED> ProfileStartTime => Str

The start time of the profile the analysis data is about. This is
specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.


=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group the analysis data is about.


=head2 B<REQUIRED> Recommendations => ArrayRef[L<Paws::CodeGuruProfiler::Recommendation>]

The list of recommendations that the analysis found for this profile.


=head2 _request_id => Str


=cut

