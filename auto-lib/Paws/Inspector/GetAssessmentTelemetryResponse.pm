
package Paws::Inspector::GetAssessmentTelemetryResponse;
  use Moose;
  has Telemetry => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Telemetry]', traits => ['Unwrapped'], xmlname => 'telemetry' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetAssessmentTelemetryResponse

=head1 ATTRIBUTES


=head2 Telemetry => ArrayRef[L<Paws::Inspector::Telemetry>]

  Telemetry details.


=cut

1;