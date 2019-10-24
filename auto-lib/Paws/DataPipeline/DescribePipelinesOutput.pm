# Generated from json/callresult_class.tt

package Paws::DataPipeline::DescribePipelinesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_PipelineDescription/;
  has PipelineDescriptionList => (is => 'ro', isa => ArrayRef[DataPipeline_PipelineDescription], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PipelineDescriptionList' => {
                                              'class' => 'Paws::DataPipeline::PipelineDescription',
                                              'type' => 'ArrayRef[DataPipeline_PipelineDescription]'
                                            }
             },
  'NameInRequest' => {
                       'PipelineDescriptionList' => 'pipelineDescriptionList'
                     },
  'IsRequired' => {
                    'PipelineDescriptionList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DescribePipelinesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineDescriptionList => ArrayRef[DataPipeline_PipelineDescription]

An array of descriptions for the specified pipelines.


=head2 _request_id => Str


=cut

1;