# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Profile/;
  has Profile => (is => 'ro', isa => AlexaForBusiness_Profile);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Profile' => {
                              'class' => 'Paws::AlexaForBusiness::Profile',
                              'type' => 'AlexaForBusiness_Profile'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetProfileResponse

=head1 ATTRIBUTES


=head2 Profile => AlexaForBusiness_Profile

The details of the room profile requested. Required.


=head2 _request_id => Str


=cut

1;