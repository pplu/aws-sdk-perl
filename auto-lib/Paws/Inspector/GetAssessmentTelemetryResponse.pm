
package Paws::Inspector::GetAssessmentTelemetryResponse;
  use Moose;
  has telemetry => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Telemetry]');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetAssessmentTelemetryResponse

=head1 ATTRIBUTES

=head2 telemetry => ArrayRef[Paws::Inspector::Telemetry]

  Telemetry details.


=cut

1;