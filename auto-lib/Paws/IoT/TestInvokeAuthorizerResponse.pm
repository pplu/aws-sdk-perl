
package Paws::IoT::TestInvokeAuthorizerResponse;
  use Moose;
  has DisconnectAfterInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'disconnectAfterInSeconds');
  has IsAuthenticated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isAuthenticated');
  has PolicyDocuments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'policyDocuments');
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalId');
  has RefreshAfterInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'refreshAfterInSeconds');

  has _request_id => (is => 'ro', isa => 'Str');
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

