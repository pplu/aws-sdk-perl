
package Aws::SQS::GetQueueAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['Unwrapped'], xmlname => 'Value', traits => ['Unwrapped'], xmlname => 'Attribute');

}
1;