
package Paws::CloudSearchDomain::UploadDocuments {
  use Moose;
  has contentType => (is => 'ro', isa => 'Str', required => 1);
  has documents => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadDocuments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearchDomain::UploadDocumentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadDocumentsResult');
}
1;