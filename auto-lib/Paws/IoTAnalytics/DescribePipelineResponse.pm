
package Paws::IoTAnalytics::DescribePipelineResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_Pipeline/;
  has Pipeline => (is => 'ro', isa => IoTAnalytics_Pipeline);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Pipeline' => {
                               'class' => 'Paws::IoTAnalytics::Pipeline',
                               'type' => 'IoTAnalytics_Pipeline'
                             }
             },
  'NameInRequest' => {
                       'Pipeline' => 'pipeline'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribePipelineResponse

=head1 ATTRIBUTES


=head2 Pipeline => IoTAnalytics_Pipeline

A "Pipeline" object that contains information about the pipeline.


=head2 _request_id => Str


=cut

