
package Paws::IoTAnalytics::CreatePipelineResponse;
  use Moose;
  has PipelineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineArn');
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreatePipelineResponse

=head1 ATTRIBUTES


=head2 PipelineArn => Str

The ARN of the pipeline.


=head2 PipelineName => Str

The name of the pipeline.


=head2 _request_id => Str


=cut

