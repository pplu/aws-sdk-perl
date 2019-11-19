
package Paws::SSO::ListAccountsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSO::Types qw/SSO_AccountInfo/;
  has AccountList => (is => 'ro', isa => ArrayRef[SSO_AccountInfo]);
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
               'AccountList' => {
                                  'type' => 'ArrayRef[SSO_AccountInfo]',
                                  'class' => 'Paws::SSO::AccountInfo'
                                }
             },
  'NameInRequest' => {
                       'AccountList' => 'accountList',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::ListAccountsResponse

=head1 ATTRIBUTES


=head2 AccountList => ArrayRef[SSO_AccountInfo]

A paginated response with the list of account information and the next
token if more results are available.


=head2 NextToken => Str

The page token client that is used to retrieve the list of accounts.


=head2 _request_id => Str


=cut

