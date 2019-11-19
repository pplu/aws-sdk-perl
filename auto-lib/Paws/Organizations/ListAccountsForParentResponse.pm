# Generated from json/callresult_class.tt

package Paws::Organizations::ListAccountsForParentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Account/;
  has Accounts => (is => 'ro', isa => ArrayRef[Organizations_Account]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Accounts' => {
                               'class' => 'Paws::Organizations::Account',
                               'type' => 'ArrayRef[Organizations_Account]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListAccountsForParentResponse

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Organizations_Account]

A list of the accounts in the specified root or OU.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;