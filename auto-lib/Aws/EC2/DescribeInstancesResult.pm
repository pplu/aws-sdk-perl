
package Aws::EC2::DescribeInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Reservations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Reservation]', traits => ['Unwrapped'], xmlname => 'reservationSet');

}
1;