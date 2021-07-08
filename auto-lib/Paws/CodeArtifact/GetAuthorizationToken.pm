
package Paws::CodeArtifact::GetAuthorizationToken;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has DurationSeconds => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'duration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAuthorizationToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/authorization-token');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::GetAuthorizationTokenResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetAuthorizationToken - Arguments for method GetAuthorizationToken on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAuthorizationToken on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method GetAuthorizationToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAuthorizationToken.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $GetAuthorizationTokenResult = $codeartifact->GetAuthorizationToken(
      Domain          => 'MyDomainName',
      DomainOwner     => 'MyAccountId',    # OPTIONAL
      DurationSeconds => 1,                # OPTIONAL
    );

    # Results:
    my $AuthorizationToken = $GetAuthorizationTokenResult->AuthorizationToken;
    my $Expiration         = $GetAuthorizationTokenResult->Expiration;

    # Returns a L<Paws::CodeArtifact::GetAuthorizationTokenResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/GetAuthorizationToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that is in scope for the generated authorization
token.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 DurationSeconds => Int

The time, in seconds, that the generated authorization token is valid.
Valid values are C<0> and any number between C<900> (15 minutes) and
C<43200> (12 hours). A value of C<0> will set the expiration of the
authorization token to the same expiration of the user's role's
temporary credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAuthorizationToken in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

