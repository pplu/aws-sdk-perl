
package Paws::CognitoSync::SetIdentityPoolConfigurationResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has PushSync => (is => 'ro', isa => 'Paws::CognitoSync::PushSync');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::SetIdentityPoolConfigurationResponse

=head1 ATTRIBUTES

=head2 IdentityPoolId => Str

  

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito.









=head2 PushSync => Paws::CognitoSync::PushSync

  

Configuration options applied to the identity pool.











=cut

