# Generated from json/callresult_class.tt

package Paws::WorkMail::ListMailboxPermissionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_Permission/;
  has NextToken => (is => 'ro', isa => Str);
  has Permissions => (is => 'ro', isa => ArrayRef[WorkMail_Permission]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Permissions' => {
                                  'class' => 'Paws::WorkMail::Permission',
                                  'type' => 'ArrayRef[WorkMail_Permission]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMailboxPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 Permissions => ArrayRef[WorkMail_Permission]

One page of the user, group, or resource mailbox permissions.


=head2 _request_id => Str


=cut

1;