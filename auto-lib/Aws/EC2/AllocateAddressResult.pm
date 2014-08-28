
package Aws::EC2::AllocateAddressResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has Domain => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'domain');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');

}
1;