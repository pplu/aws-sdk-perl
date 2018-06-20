
package Paws::IoTAnalytics::RunPipelineActivityResponse;
  use Moose;
  has LogResult => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logResult');
  has Payloads => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'payloads');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::RunPipelineActivityResponse

=head1 ATTRIBUTES


=head2 LogResult => Str

In case the pipeline activity fails, the log message that is generated.


=head2 Payloads => ArrayRef[Str|Undef]

The enriched or transformed sample message payloads as base64-encoded
strings. (The results of running the pipeline activity on each input
sample message payload, encoded in base64.)


=head2 _request_id => Str


=cut

