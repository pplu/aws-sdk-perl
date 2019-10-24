# Generated from json/callresult_class.tt

package Paws::FMS::ListMemberAccountsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::FMS::Types qw//;
  has MemberAccounts => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

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
               'MemberAccounts' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListMemberAccountsResponse

=head1 ATTRIBUTES


=head2 MemberAccounts => ArrayRef[Str|Undef]

An array of account IDs.


=head2 NextToken => Str

If you have more member account IDs than the number that you specified
for C<MaxResults> in the request, the response includes a C<NextToken>
value. To list more IDs, submit another C<ListMemberAccounts> request,
and specify the C<NextToken> value from the response in the
C<NextToken> value in the next request.


=head2 _request_id => Str


=cut

1;