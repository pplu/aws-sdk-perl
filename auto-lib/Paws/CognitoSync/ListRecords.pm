
package Paws::CognitoSync::ListRecords {
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has LastSyncCount => (is => 'ro', isa => 'Num');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SyncSessionToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::ListRecordsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListRecordsResult');
}
1;