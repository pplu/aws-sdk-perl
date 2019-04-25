package Paws::MediaLive::RtmpOutputSettings;
  use Moose;
  has CertificateMode => (is => 'ro', isa => 'Str', request_name => 'certificateMode', traits => ['NameInRequest']);
  has ConnectionRetryInterval => (is => 'ro', isa => 'Int', request_name => 'connectionRetryInterval', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Paws::MediaLive::OutputLocationRef', request_name => 'destination', traits => ['NameInRequest'], required => 1);
  has NumRetries => (is => 'ro', isa => 'Int', request_name => 'numRetries', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::RtmpOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::RtmpOutputSettings object:

  $service_obj->Method(Att1 => { CertificateMode => $value, ..., NumRetries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::RtmpOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateMode

=head1 DESCRIPTION

Placeholder documentation for RtmpOutputSettings

=head1 ATTRIBUTES


=head2 CertificateMode => Str

  If set to verifyAuthenticity, verify the tls certificate chain to a
trusted Certificate Authority (CA). This will cause rtmps outputs with
self-signed certificates to fail.


=head2 ConnectionRetryInterval => Int

  Number of seconds to wait before retrying a connection to the Flash
Media server if the connection is lost.


=head2 B<REQUIRED> Destination => L<Paws::MediaLive::OutputLocationRef>

  The RTMP endpoint excluding the stream name (eg. rtmp://host/appname).
For connection to Akamai, a username and password must be supplied. URI
fields accept format identifiers.


=head2 NumRetries => Int

  Number of retry attempts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

