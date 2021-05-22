
package Paws::LookoutMetrics::GetSampleDataResponse;
  use Moose;
  has HeaderValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SampleRows => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::GetSampleDataResponse

=head1 ATTRIBUTES


=head2 HeaderValues => ArrayRef[Str|Undef]

A list of header labels for the records.


=head2 SampleRows => ArrayRef[ArrayRef[Str|Undef]]

A list of records.


=head2 _request_id => Str


=cut

