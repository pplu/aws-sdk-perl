package Paws::MediaLive::MultiplexVideoSettings;
  use Moose;
  has ConstantBitrate => (is => 'ro', isa => 'Int', request_name => 'constantBitrate', traits => ['NameInRequest']);
  has StatmuxSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexStatmuxVideoSettings', request_name => 'statmuxSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexVideoSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexVideoSettings object:

  $service_obj->Method(Att1 => { ConstantBitrate => $value, ..., StatmuxSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexVideoSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstantBitrate

=head1 DESCRIPTION

The video configuration for each program in a multiplex.

=head1 ATTRIBUTES


=head2 ConstantBitrate => Int

  The constant bitrate configuration for the video encode. When this
field is defined, StatmuxSettings must be undefined.


=head2 StatmuxSettings => L<Paws::MediaLive::MultiplexStatmuxVideoSettings>

  Statmux rate control settings. When this field is defined,
ConstantBitrate must be undefined.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

