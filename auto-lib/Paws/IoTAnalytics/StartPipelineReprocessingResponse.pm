
package Paws::IoTAnalytics::StartPipelineReprocessingResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw//;
  has ReprocessingId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReprocessingId' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ReprocessingId' => 'reprocessingId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::StartPipelineReprocessingResponse

=head1 ATTRIBUTES


=head2 ReprocessingId => Str

The ID of the pipeline reprocessing activity that was started.


=head2 _request_id => Str


=cut

