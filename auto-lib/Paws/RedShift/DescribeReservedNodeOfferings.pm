
package Paws::RedShift::DescribeReservedNodeOfferings {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ReservedNodeOfferingsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferingsResult');
}
1;