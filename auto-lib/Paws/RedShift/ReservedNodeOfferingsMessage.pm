
package Paws::RedShift::ReservedNodeOfferingsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ReservedNodeOffering]');

}
1;