
package Aws::Support::AddAttachmentsToSetResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has expiryTime => (is => 'ro', isa => 'Str');

}
1;