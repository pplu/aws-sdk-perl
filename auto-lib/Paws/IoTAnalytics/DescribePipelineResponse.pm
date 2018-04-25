
package Paws::IoTAnalytics::DescribePipelineResponse;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::IoTAnalytics::Pipeline', traits => ['NameInRequest'], request_name => 'pipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribePipelineResponse

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::IoTAnalytics::Pipeline>

A "Pipeline" object that contains information about the pipeline.


=head2 _request_id => Str


=cut

