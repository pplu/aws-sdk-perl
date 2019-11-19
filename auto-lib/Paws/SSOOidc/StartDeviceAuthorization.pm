
package Paws::SSOOidc::StartDeviceAuthorization;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSOOidc::Types qw//;
  has ClientId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientSecret => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StartUrl => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartDeviceAuthorization');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/device_authorization');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSOOidc::StartDeviceAuthorizationResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientSecret' => 'clientSecret',
                       'StartUrl' => 'startUrl',
                       'ClientId' => 'clientId'
                     },
  'IsRequired' => {
                    'ClientId' => 1,
                    'ClientSecret' => 1,
                    'StartUrl' => 1
                  },
  'types' => {
               'ClientSecret' => {
                                   'type' => 'Str'
                                 },
               'StartUrl' => {
                               'type' => 'Str'
                             },
               'ClientId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::StartDeviceAuthorization - Arguments for method StartDeviceAuthorization on L<Paws::SSOOidc>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDeviceAuthorization on the
L<AWS SSO OIDC|Paws::SSOOidc> service. Use the attributes of this class
as arguments to method StartDeviceAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDeviceAuthorization.

=head1 SYNOPSIS

    my $oidc = Paws->service('SSOOidc');
    my $StartDeviceAuthorizationResponse = $oidc->StartDeviceAuthorization(
      ClientId     => 'MyClientId',
      ClientSecret => 'MyClientSecret',
      StartUrl     => 'MyURI',

    );

    # Results:
    my $DeviceCode      = $StartDeviceAuthorizationResponse->DeviceCode;
    my $ExpiresIn       = $StartDeviceAuthorizationResponse->ExpiresIn;
    my $Interval        = $StartDeviceAuthorizationResponse->Interval;
    my $UserCode        = $StartDeviceAuthorizationResponse->UserCode;
    my $VerificationUri = $StartDeviceAuthorizationResponse->VerificationUri;
    my $VerificationUriComplete =
      $StartDeviceAuthorizationResponse->VerificationUriComplete;

    # Returns a L<Paws::SSOOidc::StartDeviceAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oidc/StartDeviceAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The unique identifier string for the client that is registered with AWS
SSO. This value should come from the persisted result of the
RegisterClient API operation.



=head2 B<REQUIRED> ClientSecret => Str

A secret string that is generated for the client. This value should
come from the persisted result of the RegisterClient API operation.



=head2 B<REQUIRED> StartUrl => Str

The URL for the AWS SSO user portal. For more information, see Using
the User Portal
(https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html)
in the I<AWS Single Sign-On User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDeviceAuthorization in L<Paws::SSOOidc>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

