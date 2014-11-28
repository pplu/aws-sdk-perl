
package Paws::CognitoSync::SubscribeToDataset {
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubscribeToDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::SubscribeToDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeToDatasetResult');
}
1;