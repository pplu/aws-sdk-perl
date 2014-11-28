
package Paws::CloudSearchDomain::UploadDocumentsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has adds => (is => 'ro', isa => 'Num');
  has deletes => (is => 'ro', isa => 'Num');
  has status => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::DocumentServiceWarning]');

}
1;