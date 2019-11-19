# Generated from json/callresult_class.tt

package Paws::Macie::ListMemberAccountsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Macie::Types qw/Macie_MemberAccount/;
  has MemberAccounts => (is => 'ro', isa => ArrayRef[Macie_MemberAccount]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MemberAccounts' => 'memberAccounts'
                     },
  'types' => {
               'MemberAccounts' => {
                                     'type' => 'ArrayRef[Macie_MemberAccount]',
                                     'class' => 'Paws::Macie::MemberAccount'
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

Paws::Macie::ListMemberAccountsResult

=head1 ATTRIBUTES


=head2 MemberAccounts => ArrayRef[Macie_MemberAccount]

A list of the Amazon Macie member accounts returned by the action. The
current master account is also included in this list.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;