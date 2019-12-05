package Paws::MediaLive::MultiplexStatmuxVideoSettings;
  use Moose;
  has MaximumBitrate => (is => 'ro', isa => 'Int', request_name => 'maximumBitrate', traits => ['NameInRequest']);
  has MinimumBitrate => (is => 'ro', isa => 'Int', request_name => 'minimumBitrate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexStatmuxVideoSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexStatmuxVideoSettings object:

  $service_obj->Method(Att1 => { MaximumBitrate => $value, ..., MinimumBitrate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexStatmuxVideoSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumBitrate

=head1 DESCRIPTION

Statmux rate control settings

=head1 ATTRIBUTES


=head2 MaximumBitrate => Int

  Maximum statmux bitrate.


=head2 MinimumBitrate => Int

  Minimum statmux bitrate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

