
package Aws::EC2::DescribeAccountAttributesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AccountAttribute]', traits => ['Unwrapped'], xmlname => 'accountAttributeSet');

}
1;