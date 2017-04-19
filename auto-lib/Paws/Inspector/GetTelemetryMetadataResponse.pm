
package Paws::Inspector::GetTelemetryMetadataResponse;
  use Moose;
  has TelemetryMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::TelemetryMetadata]', traits => ['NameInRequest'], request_name => 'telemetryMetadata' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetTelemetryMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TelemetryMetadata => ArrayRef[L<Paws::Inspector::TelemetryMetadata>]

Telemetry details.


=head2 _request_id => Str


=cut

1;