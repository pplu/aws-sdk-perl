
package Paws::WorkDocs::GetCurrentUserResponse;
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
                           'type' => 'WorkDocs_User',
                           'class' => 'Paws::WorkDocs::User'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetCurrentUserResponse

=head1 ATTRIBUTES


=head2 User => WorkDocs_User

Metadata of the user.


=head2 _request_id => Str


=cut

