
package Paws::SQS::GetQueueAttributesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Paws::SQS::AttributeMap');

}
1;