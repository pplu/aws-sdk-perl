
package Paws::CognitoSync::UpdateRecords {
  use Moose;
  has ClientContext => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceId => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has RecordPatches => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::RecordPatch]');
  has SyncSessionToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::UpdateRecordsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateRecordsResult');
}
1;