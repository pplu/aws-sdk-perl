
package Paws::Chime::BatchUpdateUserResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_UserError/;
  has UserErrors => (is => 'ro', isa => ArrayRef[Chime_UserError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserErrors' => {
                                 'class' => 'Paws::Chime::UserError',
                                 'type' => 'ArrayRef[Chime_UserError]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::BatchUpdateUserResponse

=head1 ATTRIBUTES


=head2 UserErrors => ArrayRef[Chime_UserError]

If the BatchUpdateUser action fails for one or more of the user IDs in
the request, a list of the user IDs is returned, along with error codes
and error messages.


=head2 _request_id => Str


=cut

