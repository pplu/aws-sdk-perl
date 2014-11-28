
package Paws::ElasticTranscoder::UpdatePipelineNotifications {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Notifications => (is => 'ro', isa => 'Paws::ElasticTranscoder::Notifications', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipelineNotifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineNotificationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdatePipelineNotificationsResult');
}
1;