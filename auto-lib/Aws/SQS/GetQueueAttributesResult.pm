
package Aws::SQS::GetQueueAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap');

}
1;