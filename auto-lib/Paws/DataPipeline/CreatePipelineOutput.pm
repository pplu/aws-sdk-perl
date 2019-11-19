# Generated from json/callresult_class.tt

package Paws::DataPipeline::CreatePipelineOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataPipeline::Types qw//;
  has PipelineId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PipelineId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'PipelineId' => 1
                  },
  'NameInRequest' => {
                       'PipelineId' => 'pipelineId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::CreatePipelineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineId => Str

The ID that AWS Data Pipeline assigns the newly created pipeline. For
example, C<df-06372391ZG65EXAMPLE>.


=head2 _request_id => Str


=cut

1;