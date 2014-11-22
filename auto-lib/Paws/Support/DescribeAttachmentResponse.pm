
package Paws::Support::DescribeAttachmentResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has attachment => (is => 'ro', isa => 'Paws::Support::Attachment');

}
1;