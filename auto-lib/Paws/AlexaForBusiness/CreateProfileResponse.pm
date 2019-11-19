# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has ProfileArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProfileArn' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateProfileResponse

=head1 ATTRIBUTES


=head2 ProfileArn => Str

The ARN of the newly created room profile in the response.


=head2 _request_id => Str


=cut

1;