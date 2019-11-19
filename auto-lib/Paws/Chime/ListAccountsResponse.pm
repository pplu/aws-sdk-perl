
package Paws::Chime::ListAccountsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_Account/;
  has Accounts => (is => 'ro', isa => ArrayRef[Chime_Account]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Accounts' => {
                               'class' => 'Paws::Chime::Account',
                               'type' => 'ArrayRef[Chime_Account]'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAccountsResponse

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Chime_Account]

List of Amazon Chime accounts and account details.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut

