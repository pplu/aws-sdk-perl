
package Paws::IoT::TestInvokeAuthorizerResponse;
  use Moo;
  use Types::Standard qw/Str Int Bool ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has DisconnectAfterInSeconds => (is => 'ro', isa => Int);
  has IsAuthenticated => (is => 'ro', isa => Bool);
  has PolicyDocuments => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has PrincipalId => (is => 'ro', isa => Str);
  has RefreshAfterInSeconds => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyDocuments' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'IsAuthenticated' => {
                                      'type' => 'Bool'
                                    },
               'RefreshAfterInSeconds' => {
                                            'type' => 'Int'
                                          },
               'PrincipalId' => {
                                  'type' => 'Str'
                                },
               'DisconnectAfterInSeconds' => {
                                               'type' => 'Int'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DisconnectAfterInSeconds' => 'disconnectAfterInSeconds',
                       'PrincipalId' => 'principalId',
                       'PolicyDocuments' => 'policyDocuments',
                       'IsAuthenticated' => 'isAuthenticated',
                       'RefreshAfterInSeconds' => 'refreshAfterInSeconds'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TestInvokeAuthorizerResponse

=head1 ATTRIBUTES


=head2 DisconnectAfterInSeconds => Int

The number of seconds after which the connection is terminated.


=head2 IsAuthenticated => Bool

True if the token is authenticated, otherwise false.


=head2 PolicyDocuments => ArrayRef[Str|Undef]

IAM policy documents.


=head2 PrincipalId => Str

The principal ID.


=head2 RefreshAfterInSeconds => Int

The number of seconds after which the temporary credentials are
refreshed.


=head2 _request_id => Str


=cut

