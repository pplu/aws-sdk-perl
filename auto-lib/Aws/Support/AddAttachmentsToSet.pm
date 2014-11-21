
package Aws::Support::AddAttachmentsToSet {
  use Moose;
  has attachments => (is => 'ro', isa => 'ArrayRef[Aws::Support::Attachment]', required => 1);
  has attachmentSetId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddAttachmentsToSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::AddAttachmentsToSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;