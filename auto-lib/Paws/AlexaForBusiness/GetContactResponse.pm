# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetContactResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Contact/;
  has Contact => (is => 'ro', isa => AlexaForBusiness_Contact);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Contact' => {
                              'class' => 'Paws::AlexaForBusiness::Contact',
                              'type' => 'AlexaForBusiness_Contact'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetContactResponse

=head1 ATTRIBUTES


=head2 Contact => AlexaForBusiness_Contact

The details of the requested contact.


=head2 _request_id => Str


=cut

1;