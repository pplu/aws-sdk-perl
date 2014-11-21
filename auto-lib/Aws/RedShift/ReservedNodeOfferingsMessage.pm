
package Aws::RedShift::ReservedNodeOfferingsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNodeOffering]');

}
1;