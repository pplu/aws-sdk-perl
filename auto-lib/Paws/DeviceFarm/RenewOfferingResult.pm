# Generated from json/callresult_class.tt

package Paws::DeviceFarm::RenewOfferingResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_OfferingTransaction/;
  has OfferingTransaction => (is => 'ro', isa => DeviceFarm_OfferingTransaction);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'OfferingTransaction' => 'offeringTransaction'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OfferingTransaction' => {
                                          'type' => 'DeviceFarm_OfferingTransaction',
                                          'class' => 'Paws::DeviceFarm::OfferingTransaction'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::RenewOfferingResult

=head1 ATTRIBUTES


=head2 OfferingTransaction => DeviceFarm_OfferingTransaction

Represents the status of the offering transaction for the renewal.


=head2 _request_id => Str


=cut

1;