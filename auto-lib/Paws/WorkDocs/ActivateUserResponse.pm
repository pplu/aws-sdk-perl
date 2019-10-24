
package Paws::WorkDocs::ActivateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_User/;
  has User => (is => 'ro', isa => WorkDocs_User);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'User' => {
                           'class' => 'Paws::WorkDocs::User',
                           'type' => 'WorkDocs_User'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::ActivateUserResponse

=head1 ATTRIBUTES


=head2 User => WorkDocs_User

The user information.


=head2 _request_id => Str


=cut

