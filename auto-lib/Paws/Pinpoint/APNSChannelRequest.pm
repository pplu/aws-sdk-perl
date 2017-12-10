package Paws::Pinpoint::APNSChannelRequest;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str');
  has Certificate => (is => 'ro', isa => 'Str');
  has DefaultAuthenticationMethod => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has PrivateKey => (is => 'ro', isa => 'Str');
  has TeamId => (is => 'ro', isa => 'Str');
  has TokenKey => (is => 'ro', isa => 'Str');
  has TokenKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::APNSChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::APNSChannelRequest object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., TokenKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::APNSChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Apple Push Notification Service channel definition.

=head1 ATTRIBUTES


=head2 BundleId => Str

  The bundle id used for APNs Tokens.


=head2 Certificate => Str

  The distribution certificate from Apple.


=head2 DefaultAuthenticationMethod => Str

  The default authentication method used for APNs.


=head2 Enabled => Bool

  If the channel is enabled for sending messages.


=head2 PrivateKey => Str

  The certificate private key.


=head2 TeamId => Str

  The team id used for APNs Tokens.


=head2 TokenKey => Str

  The token key used for APNs Tokens.


=head2 TokenKeyId => Str

  The token key used for APNs Tokens.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

