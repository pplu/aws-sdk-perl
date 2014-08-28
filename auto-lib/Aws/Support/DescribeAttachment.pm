
package Aws::Support::DescribeAttachment {
  use Moose;
  has attachmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;