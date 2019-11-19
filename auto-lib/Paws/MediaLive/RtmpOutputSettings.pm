# Generated from default/object.tt
package Paws::MediaLive::RtmpOutputSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaLive::Types qw/MediaLive_OutputLocationRef/;
  has CertificateMode => (is => 'ro', isa => Str);
  has ConnectionRetryInterval => (is => 'ro', isa => Int);
  has Destination => (is => 'ro', isa => MediaLive_OutputLocationRef, required => 1);
  has NumRetries => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Destination' => {
                                  'class' => 'Paws::MediaLive::OutputLocationRef',
                                  'type' => 'MediaLive_OutputLocationRef'
                                },
               'ConnectionRetryInterval' => {
                                              'type' => 'Int'
                                            },
               'NumRetries' => {
                                 'type' => 'Int'
                               },
               'CertificateMode' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'CertificateMode' => 'certificateMode',
                       'NumRetries' => 'numRetries',
                       'Destination' => 'destination',
                       'ConnectionRetryInterval' => 'connectionRetryInterval'
                     },
  'IsRequired' => {
                    'Destination' => 1
                  }
}
;
    return $Params_map;
  }


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

Rtmp Output Settings

=head1 ATTRIBUTES


=head2 CertificateMode => Str

  If set to verifyAuthenticity, verify the tls certificate chain to a
trusted Certificate Authority (CA). This will cause rtmps outputs with
self-signed certificates to fail.


=head2 ConnectionRetryInterval => Int

  Number of seconds to wait before retrying a connection to the Flash
Media server if the connection is lost.


=head2 B<REQUIRED> Destination => MediaLive_OutputLocationRef

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

