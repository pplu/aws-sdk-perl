
use Paws::API;


package Paws::ElasticTranscoder {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elastictranscoder');
  has version => (is => 'ro', isa => 'Str', default => '2012-09-25');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonResponse');

  
  sub CancelJob {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::CancelJob', @_);
  }
  sub CreateJob {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::CreateJob', @_);
  }
  sub CreatePipeline {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::CreatePipeline', @_);
  }
  sub CreatePreset {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::CreatePreset', @_);
  }
  sub DeletePipeline {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::DeletePipeline', @_);
  }
  sub DeletePreset {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::DeletePreset', @_);
  }
  sub ListJobsByPipeline {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ListJobsByPipeline', @_);
  }
  sub ListJobsByStatus {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ListJobsByStatus', @_);
  }
  sub ListPipelines {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ListPipelines', @_);
  }
  sub ListPresets {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ListPresets', @_);
  }
  sub ReadJob {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ReadJob', @_);
  }
  sub ReadPipeline {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ReadPipeline', @_);
  }
  sub ReadPreset {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::ReadPreset', @_);
  }
  sub TestRole {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::TestRole', @_);
  }
  sub UpdatePipeline {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::UpdatePipeline', @_);
  }
  sub UpdatePipelineNotifications {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::UpdatePipelineNotifications', @_);
  }
  sub UpdatePipelineStatus {
    my $self = shift;
    return $self->do_call('Paws::ElasticTranscoder::UpdatePipelineStatus', @_);
  }
}
1;