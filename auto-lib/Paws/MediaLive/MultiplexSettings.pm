package Paws::MediaLive::MultiplexSettings;
  use Moose;
  has MaximumVideoBufferDelayMilliseconds => (is => 'ro', isa => 'Int', request_name => 'maximumVideoBufferDelayMilliseconds', traits => ['NameInRequest']);
  has TransportStreamBitrate => (is => 'ro', isa => 'Int', request_name => 'transportStreamBitrate', traits => ['NameInRequest'], required => 1);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest'], required => 1);
  has TransportStreamReservedBitrate => (is => 'ro', isa => 'Int', request_name => 'transportStreamReservedBitrate', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexSettings object:

  $service_obj->Method(Att1 => { MaximumVideoBufferDelayMilliseconds => $value, ..., TransportStreamReservedBitrate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumVideoBufferDelayMilliseconds

=head1 DESCRIPTION

Contains configuration for a Multiplex event

=head1 ATTRIBUTES


=head2 MaximumVideoBufferDelayMilliseconds => Int

  Maximum video buffer delay in milliseconds.


=head2 B<REQUIRED> TransportStreamBitrate => Int

  Transport stream bit rate.


=head2 B<REQUIRED> TransportStreamId => Int

  Transport stream ID.


=head2 TransportStreamReservedBitrate => Int

  Transport stream reserved bit rate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

