
package Paws::CognitoIdentity::LookupDeveloperIdentity;
  use Moose;
  has DeveloperUserIdentifier => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str');
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'LookupDeveloperIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::LookupDeveloperIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::LookupDeveloperIdentity - Arguments for method LookupDeveloperIdentity on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method LookupDeveloperIdentity on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method LookupDeveloperIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to LookupDeveloperIdentity.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $LookupDeveloperIdentityResponse =
      $cognito -identity->LookupDeveloperIdentity(
      IdentityPoolId          => 'MyIdentityPoolId',
      DeveloperUserIdentifier => 'MyDeveloperUserIdentifier',    # OPTIONAL
      IdentityId              => 'MyIdentityId',                 # OPTIONAL
      MaxResults              => 1,                              # OPTIONAL
      NextToken               => 'MyPaginationKey',              # OPTIONAL
      );

    # Results:
    my $DeveloperUserIdentifierList =
      $LookupDeveloperIdentityResponse->DeveloperUserIdentifierList;
    my $IdentityId = $LookupDeveloperIdentityResponse->IdentityId;
    my $NextToken  = $LookupDeveloperIdentityResponse->NextToken;

   # Returns a L<Paws::CognitoIdentity::LookupDeveloperIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/LookupDeveloperIdentity>

=head1 ATTRIBUTES


=head2 DeveloperUserIdentifier => Str

A unique ID used by your backend authentication process to identify a
user. Typically, a developer identity provider would issue many
developer user identifiers, in keeping with the number of users.



=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.



=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.



=head2 MaxResults => Int

The maximum number of identities to return.



=head2 NextToken => Str

A pagination token. The first call you make will have C<NextToken> set
to null. After that the service will return C<NextToken> values as
needed. For example, let's say you make a request with C<MaxResults>
set to 10, and there are 20 matches in the database. The service will
return a pagination token as a part of the response. This token can be
used to call the API again and get results starting from the 11th
match.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method LookupDeveloperIdentity in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

