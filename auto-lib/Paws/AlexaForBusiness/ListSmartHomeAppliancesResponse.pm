# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListSmartHomeAppliancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SmartHomeAppliance/;
  has NextToken => (is => 'ro', isa => Str);
  has SmartHomeAppliances => (is => 'ro', isa => ArrayRef[AlexaForBusiness_SmartHomeAppliance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SmartHomeAppliances' => {
                                          'type' => 'ArrayRef[AlexaForBusiness_SmartHomeAppliance]',
                                          'class' => 'Paws::AlexaForBusiness::SmartHomeAppliance'
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

Paws::AlexaForBusiness::ListSmartHomeAppliancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The tokens used for pagination.


=head2 SmartHomeAppliances => ArrayRef[AlexaForBusiness_SmartHomeAppliance]

The smart home appliances.


=head2 _request_id => Str


=cut

1;