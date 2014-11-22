
package Paws::EC2::DescribeInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Reservations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Reservation]', traits => ['Unwrapped'], xmlname => 'reservationSet');

}
1;