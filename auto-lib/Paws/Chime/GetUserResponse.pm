
package Paws::Chime::GetUserResponse;
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

Paws::Chime::GetUserResponse

=head1 ATTRIBUTES


=head2 User => Chime_User

The user details.


=head2 _request_id => Str


=cut

