
package Aws::RDS::ListTagsForResourceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['Unwrapped'], xmlname => 'Tag');

}
1;