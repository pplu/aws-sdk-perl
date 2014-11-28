
package Paws::CognitoSync::ListRecordsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Count => (is => 'ro', isa => 'Int');
  has DatasetDeletedAfterRequestedSyncCount => (is => 'ro', isa => 'Bool');
  has DatasetExists => (is => 'ro', isa => 'Bool');
  has DatasetSyncCount => (is => 'ro', isa => 'Num');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has MergedDatasetNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::Record]');
  has SyncSessionToken => (is => 'ro', isa => 'Str');

}
1;