
package Paws::IoTAnalytics::RunPipelineActivityResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoTAnalytics::Types qw//;
  has LogResult => (is => 'ro', isa => Str);
  has Payloads => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogResult' => {
                                'type' => 'Str'
                              },
               'Payloads' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LogResult' => 'logResult',
                       'Payloads' => 'payloads'
                     }
}
;
    return $Params_map;
  }

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

