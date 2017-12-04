
package Paws::CognitoIdp::ListIdentityProvidersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Providers => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ProviderDescription]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListIdentityProvidersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token.


=head2 B<REQUIRED> Providers => ArrayRef[L<Paws::CognitoIdp::ProviderDescription>]

A list of identity provider objects.


=head2 _request_id => Str


=cut

1;