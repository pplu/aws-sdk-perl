
package Paws::CognitoIdentity::UnlinkIdentity;
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Paws::CognitoIdentity::LoginsMap', required => 1);
  has LoginsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnlinkIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::UnlinkIdentity - Arguments for method UnlinkIdentity on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnlinkIdentity on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method UnlinkIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnlinkIdentity.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    $cognito -identity->UnlinkIdentity(
      IdentityId => 'MyIdentityId',
      Logins     => {
        'MyIdentityProviderName' => 'MyIdentityProviderToken'
        ,    # key: min: 1, max: 128, value: min: 1, max: 50000
      },
      LoginsToRemove => [
        'MyIdentityProviderName', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/UnlinkIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityId => Str

A unique identifier in the format REGION:GUID.



=head2 B<REQUIRED> Logins => L<Paws::CognitoIdentity::LoginsMap>

A set of optional name-value pairs that map provider names to provider
tokens.



=head2 B<REQUIRED> LoginsToRemove => ArrayRef[Str|Undef]

Provider names to unlink from this identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnlinkIdentity in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

