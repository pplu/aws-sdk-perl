
package Paws::Chime::ResetPersonalPINResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_User/;
  has User => (is => 'ro', isa => Chime_User);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'User' => {
                           'class' => 'Paws::Chime::User',
                           'type' => 'Chime_User'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ResetPersonalPINResponse

=head1 ATTRIBUTES


=head2 User => Chime_User

The user details and new personal meeting PIN.


=head2 _request_id => Str


=cut

