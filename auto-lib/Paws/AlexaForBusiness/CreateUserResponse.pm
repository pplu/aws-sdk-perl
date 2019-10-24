# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has UserArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserArn' => {
                              'type' => 'Str'
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

Paws::AlexaForBusiness::CreateUserResponse

=head1 ATTRIBUTES


=head2 UserArn => Str

The ARN of the newly created user in the response.


=head2 _request_id => Str


=cut

1;