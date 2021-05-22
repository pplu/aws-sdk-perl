
package Paws::CognitoIdentity::GetPrincipalTagAttributeMapResponse;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has IdentityProviderName => (is => 'ro', isa => 'Str');
  has PrincipalTags => (is => 'ro', isa => 'Paws::CognitoIdentity::PrincipalTags');
  has UseDefaults => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetPrincipalTagAttributeMapResponse

=head1 ATTRIBUTES


=head2 IdentityPoolId => Str

You can use this operation to get the ID of the Identity Pool you setup
attribute mappings for.


=head2 IdentityProviderName => Str

You can use this operation to get the provider name.


=head2 PrincipalTags => L<Paws::CognitoIdentity::PrincipalTags>

You can use this operation to add principal tags. The
C<PrincipalTags>operation enables you to reference user attributes in
your IAM permissions policy.


=head2 UseDefaults => Bool

You can use this operation to list


=head2 _request_id => Str


=cut

1;