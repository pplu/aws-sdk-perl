# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::CreateNetworkProfile;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::AlexaForBusiness::Types qw//;
  has CertificateAuthorityArn => (is => 'ro', isa => Str, predicate => 1);
  has ClientRequestToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CurrentPassword => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has EapMethod => (is => 'ro', isa => Str, predicate => 1);
  has NetworkProfileName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextPassword => (is => 'ro', isa => Str, predicate => 1);
  has SecurityType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Ssid => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TrustAnchors => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateNetworkProfile');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::CreateNetworkProfileResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ClientRequestToken' => 1,
                    'SecurityType' => 1,
                    'NetworkProfileName' => 1,
                    'Ssid' => 1
                  },
  'types' => {
               'NextPassword' => {
                                   'type' => 'Str'
                                 },
               'Ssid' => {
                           'type' => 'Str'
                         },
               'EapMethod' => {
                                'type' => 'Str'
                              },
               'CertificateAuthorityArn' => {
                                              'type' => 'Str'
                                            },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CurrentPassword' => {
                                      'type' => 'Str'
                                    },
               'TrustAnchors' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'NetworkProfileName' => {
                                         'type' => 'Str'
                                       },
               'SecurityType' => {
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

Paws::AlexaForBusiness::CreateNetworkProfile - Arguments for method CreateNetworkProfile on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkProfile on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateNetworkProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkProfile.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateNetworkProfileResponse = $a4b->CreateNetworkProfile(
      ClientRequestToken      => 'MyClientRequestToken',
      NetworkProfileName      => 'MyNetworkProfileName',
      SecurityType            => 'OPEN',
      Ssid                    => 'MyNetworkSsid',
      CertificateAuthorityArn => 'MyArn',                          # OPTIONAL
      CurrentPassword         => 'MyCurrentWiFiPassword',          # OPTIONAL
      Description             => 'MyNetworkProfileDescription',    # OPTIONAL
      EapMethod               => 'EAP_TLS',                        # OPTIONAL
      NextPassword            => 'MyNextWiFiPassword',             # OPTIONAL
      TrustAnchors            => [ 'MyTrustAnchor', ... ],         # OPTIONAL
    );

    # Results:
    my $NetworkProfileArn = $CreateNetworkProfileResponse->NetworkProfileArn;

    # Returns a L<Paws::AlexaForBusiness::CreateNetworkProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateNetworkProfile>

=head1 ATTRIBUTES


=head2 CertificateAuthorityArn => Str

The ARN of the Private Certificate Authority (PCA) created in AWS
Certificate Manager (ACM). This is used to issue certificates to the
devices.



=head2 B<REQUIRED> ClientRequestToken => Str





=head2 CurrentPassword => Str

The current password of the Wi-Fi network.



=head2 Description => Str

Detailed information about a device's network profile.



=head2 EapMethod => Str

The authentication standard that is used in the EAP framework.
Currently, EAP_TLS is supported.

Valid values are: C<"EAP_TLS">

=head2 B<REQUIRED> NetworkProfileName => Str

The name of the network profile associated with a device.



=head2 NextPassword => Str

The next, or subsequent, password of the Wi-Fi network. This password
is asynchronously transmitted to the device and is used when the
password of the network changes to NextPassword.



=head2 B<REQUIRED> SecurityType => Str

The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE,
WPA2_PSK, WPA_PSK, WEP, or OPEN.

Valid values are: C<"OPEN">, C<"WEP">, C<"WPA_PSK">, C<"WPA2_PSK">, C<"WPA2_ENTERPRISE">

=head2 B<REQUIRED> Ssid => Str

The SSID of the Wi-Fi network.



=head2 TrustAnchors => ArrayRef[Str|Undef]

The root certificates of your authentication server that is installed
on your devices and used to trust your authentication server during EAP
negotiation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkProfile in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

