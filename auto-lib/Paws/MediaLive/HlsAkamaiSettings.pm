package Paws::MediaLive::HlsAkamaiSettings;
  use Moose;
  has ConnectionRetryInterval => (is => 'ro', isa => 'Int', request_name => 'connectionRetryInterval', traits => ['NameInRequest']);
  has FilecacheDuration => (is => 'ro', isa => 'Int', request_name => 'filecacheDuration', traits => ['NameInRequest']);
  has HttpTransferMode => (is => 'ro', isa => 'Str', request_name => 'httpTransferMode', traits => ['NameInRequest']);
  has NumRetries => (is => 'ro', isa => 'Int', request_name => 'numRetries', traits => ['NameInRequest']);
  has RestartDelay => (is => 'ro', isa => 'Int', request_name => 'restartDelay', traits => ['NameInRequest']);
  has Salt => (is => 'ro', isa => 'Str', request_name => 'salt', traits => ['NameInRequest']);
  has Token => (is => 'ro', isa => 'Str', request_name => 'token', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsAkamaiSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsAkamaiSettings object:

  $service_obj->Method(Att1 => { ConnectionRetryInterval => $value, ..., Token => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsAkamaiSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionRetryInterval

=head1 DESCRIPTION

Placeholder documentation for HlsAkamaiSettings

=head1 ATTRIBUTES


=head2 ConnectionRetryInterval => Int

  Number of seconds to wait before retrying connection to the CDN if the
connection is lost.


=head2 FilecacheDuration => Int

  Size in seconds of file cache for streaming outputs.


=head2 HttpTransferMode => Str

  Specify whether or not to use chunked transfer encoding to Akamai. User
should contact Akamai to enable this feature.


=head2 NumRetries => Int

  Number of retry attempts that will be made before the Live Event is put
into an error state.


=head2 RestartDelay => Int

  If a streaming output fails, number of seconds to wait until a restart
is initiated. A value of 0 means never restart.


=head2 Salt => Str

  Salt for authenticated Akamai.


=head2 Token => Str

  Token parameter for authenticated akamai. If not specified, _gda_ is
used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

