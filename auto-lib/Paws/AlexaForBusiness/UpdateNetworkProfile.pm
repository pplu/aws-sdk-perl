
package Paws::AlexaForBusiness::UpdateNetworkProfile;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str');
  has CurrentPassword => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NetworkProfileArn => (is => 'ro', isa => 'Str', required => 1);
  has NetworkProfileName => (is => 'ro', isa => 'Str');
  has NextPassword => (is => 'ro', isa => 'Str');
  has TrustAnchors => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNetworkProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateNetworkProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateNetworkProfile - Arguments for method UpdateNetworkProfile on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNetworkProfile on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateNetworkProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNetworkProfile.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateNetworkProfileResponse = $a4b->UpdateNetworkProfile(
      NetworkProfileArn       => 'MyArn',
      CertificateAuthorityArn => 'MyArn',                          # OPTIONAL
      CurrentPassword         => 'MyCurrentWiFiPassword',          # OPTIONAL
      Description             => 'MyNetworkProfileDescription',    # OPTIONAL
      NetworkProfileName      => 'MyNetworkProfileName',           # OPTIONAL
      NextPassword            => 'MyNextWiFiPassword',             # OPTIONAL
      TrustAnchors            => [ 'MyTrustAnchor', ... ],         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateNetworkProfile>

=head1 ATTRIBUTES


=head2 CertificateAuthorityArn => Str

The ARN of the Private Certificate Authority (PCA) created in AWS
Certificate Manager (ACM). This is used to issue certificates to the
devices.



=head2 CurrentPassword => Str

The current password of the Wi-Fi network.



=head2 Description => Str

Detailed information about a device's network profile.



=head2 B<REQUIRED> NetworkProfileArn => Str

The ARN of the network profile associated with a device.



=head2 NetworkProfileName => Str

The name of the network profile associated with a device.



=head2 NextPassword => Str

The next, or subsequent, password of the Wi-Fi network. This password
is asynchronously transmitted to the device and is used when the
password of the network changes to NextPassword.



=head2 TrustAnchors => ArrayRef[Str|Undef]

The root certificate(s) of your authentication server that will be
installed on your devices and used to trust your authentication server
during EAP negotiation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNetworkProfile in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

