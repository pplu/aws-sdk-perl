
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserSummaryList' => {
                                      'type' => 'ArrayRef[Connect_UserSummary]',
                                      'class' => 'Paws::Connect::UserSummary'
                                    },
               'NextToken' => {
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

If there are additional results, this is the token for the next set of
results.


=head2 UserSummaryList => ArrayRef[Connect_UserSummary]

Information about the users.


=head2 _request_id => Str


=cut

