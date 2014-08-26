package Aws::Support::AttachmentDetails {
  use Moose;
  with ('AWS::API::ResultParser');
  has attachmentId => (is => 'ro', isa => 'Str');
  has fileName => (is => 'ro', isa => 'Str');
}
1
