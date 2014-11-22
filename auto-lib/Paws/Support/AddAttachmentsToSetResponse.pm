
package Paws::Support::AddAttachmentsToSetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has expiryTime => (is => 'ro', isa => 'Str');

}
1;