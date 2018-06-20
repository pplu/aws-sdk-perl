
package Paws::IoTAnalytics::StartPipelineReprocessingResponse;
  use Moose;
  has ReprocessingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reprocessingId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::StartPipelineReprocessingResponse

=head1 ATTRIBUTES


=head2 ReprocessingId => Str

The ID of the pipeline reprocessing activity that was started.


=head2 _request_id => Str


=cut

