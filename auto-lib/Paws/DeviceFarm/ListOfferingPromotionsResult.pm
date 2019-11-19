# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListOfferingPromotionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_OfferingPromotion/;
  has NextToken => (is => 'ro', isa => Str);
  has OfferingPromotions => (is => 'ro', isa => ArrayRef[DeviceFarm_OfferingPromotion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'OfferingPromotions' => 'offeringPromotions'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OfferingPromotions' => {
                                         'type' => 'ArrayRef[DeviceFarm_OfferingPromotion]',
                                         'class' => 'Paws::DeviceFarm::OfferingPromotion'
                                       },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListOfferingPromotionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier to be used in the next call to this operation, to return
the next set of items in the list.


=head2 OfferingPromotions => ArrayRef[DeviceFarm_OfferingPromotion]

Information about the offering promotions.


=head2 _request_id => Str


=cut

1;