
package Paws::SSOOidc::RegisterClient;
  use Moose;
  has ClientName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientName', required => 1);
  has ClientType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientType', required => 1);
  has Scopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'scopes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterClient');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/client/register');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOOidc::RegisterClientResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::RegisterClient - Arguments for method RegisterClient on L<Paws::SSOOidc>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterClient on the
L<AWS SSO OIDC|Paws::SSOOidc> service. Use the attributes of this class
as arguments to method RegisterClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterClient.

=head1 SYNOPSIS

    my $oidc = Paws->service('SSOOidc');
    my $RegisterClientResponse = $oidc->RegisterClient(
      ClientName => 'MyClientName',
      ClientType => 'MyClientType',
      Scopes     => [ 'MyScope', ... ],    # OPTIONAL
    );

    # Results:
    my $AuthorizationEndpoint = $RegisterClientResponse->AuthorizationEndpoint;
    my $ClientId              = $RegisterClientResponse->ClientId;
    my $ClientIdIssuedAt      = $RegisterClientResponse->ClientIdIssuedAt;
    my $ClientSecret          = $RegisterClientResponse->ClientSecret;
    my $ClientSecretExpiresAt = $RegisterClientResponse->ClientSecretExpiresAt;
    my $TokenEndpoint         = $RegisterClientResponse->TokenEndpoint;

    # Returns a L<Paws::SSOOidc::RegisterClientResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oidc/RegisterClient>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientName => Str

The friendly name of the client.



=head2 B<REQUIRED> ClientType => Str

The type of client. The service supports only C<public> as a client
type. Anything other than public will be rejected by the service.



=head2 Scopes => ArrayRef[Str|Undef]

The list of scopes that are defined by the client. Upon authorization,
this list is used to restrict permissions when granting an access
token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterClient in L<Paws::SSOOidc>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

