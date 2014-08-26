package Aws::Support::Attachment {
  use Moose;
  with ('AWS::API::ResultParser');
  has data => (is => 'ro', isa => 'Str');
  has fileName => (is => 'ro', isa => 'Str');
}
1
