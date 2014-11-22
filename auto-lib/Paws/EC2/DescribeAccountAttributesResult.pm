
package Paws::EC2::DescribeAccountAttributesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccountAttribute]', traits => ['Unwrapped'], xmlname => 'accountAttributeSet');

}
1;