# Generated from json/callresult_class.tt

package Paws::DeviceFarm::PurchaseOfferingResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_OfferingTransaction/;
  has OfferingTransaction => (is => 'ro', isa => DeviceFarm_OfferingTransaction);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OfferingTransaction' => {
                                          'class' => 'Paws::DeviceFarm::OfferingTransaction',
                                          'type' => 'DeviceFarm_OfferingTransaction'
                                        }
             },
  'NameInRequest' => {
                       'OfferingTransaction' => 'offeringTransaction'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::PurchaseOfferingResult

=head1 ATTRIBUTES


=head2 OfferingTransaction => DeviceFarm_OfferingTransaction

Represents the offering transaction for the purchase result.


=head2 _request_id => Str


=cut

1;