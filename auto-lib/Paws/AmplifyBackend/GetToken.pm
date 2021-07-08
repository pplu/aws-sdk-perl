
package Paws::AmplifyBackend::GetToken;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/challenge/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::GetTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetToken - Arguments for method GetToken on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetToken on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method GetToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetToken.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $GetTokenResponse = $amplifybackend->GetToken(
      AppId     => 'My__string',
      SessionId => 'My__string',

    );

    # Results:
    my $AppId         = $GetTokenResponse->AppId;
    my $ChallengeCode = $GetTokenResponse->ChallengeCode;
    my $SessionId     = $GetTokenResponse->SessionId;
    my $Ttl           = $GetTokenResponse->Ttl;

    # Returns a L<Paws::AmplifyBackend::GetTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/GetToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> SessionId => Str

The session ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetToken in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

