
package Paws::CognitoIdentity::GetId;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Paws::CognitoIdentity::LoginsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::GetIdResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetId - Arguments for method GetId on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetId on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method GetId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetId.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $GetIdResponse = $cognito -identity->GetId(
      IdentityPoolId => 'MyIdentityPoolId',
      AccountId      => 'MyAccountId',        # OPTIONAL
      Logins         => {
        'MyIdentityProviderName' => 'MyIdentityProviderToken'
        ,    # key: min: 1, max: 128, value: min: 1, max: 50000
      },    # OPTIONAL
    );

    # Results:
    my $IdentityId = $GetIdResponse->IdentityId;

    # Returns a L<Paws::CognitoIdentity::GetIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/GetId>

=head1 ATTRIBUTES


=head2 AccountId => Str

A standard AWS account ID (9+ digits).



=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.



=head2 Logins => L<Paws::CognitoIdentity::LoginsMap>

A set of optional name-value pairs that map provider names to provider
tokens. The available provider names for C<Logins> are as follows:

=over

=item *

Facebook: C<graph.facebook.com>

=item *

Amazon Cognito Identity Provider:
C<cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789>

=item *

Google: C<accounts.google.com>

=item *

Amazon: C<www.amazon.com>

=item *

Twitter: C<api.twitter.com>

=item *

Digits: C<www.digits.com>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetId in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

