
package Paws::Connect::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_UserSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has UserSummaryList => (is => 'ro', isa => ArrayRef[Connect_UserSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserSummaryList' => {
                                      'class' => 'Paws::Connect::UserSummary',
                                      'type' => 'ArrayRef[Connect_UserSummary]'
                                    },
               'NextToken' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 UserSummaryList => ArrayRef[Connect_UserSummary]

An array of C<UserSummary> objects that contain information about the
users in your instance.


=head2 _request_id => Str


=cut

