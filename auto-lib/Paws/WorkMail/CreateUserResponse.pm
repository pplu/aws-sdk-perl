# Generated from json/callresult_class.tt

package Paws::WorkMail::CreateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has UserId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserId' => {
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

Paws::WorkMail::CreateUserResponse

=head1 ATTRIBUTES


=head2 UserId => Str

The identifier for the new user.


=head2 _request_id => Str


=cut

1;