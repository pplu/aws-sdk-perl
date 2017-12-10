package Paws::MediaLive::Mp2Settings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Num', request_name => 'bitrate', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Num', request_name => 'sampleRate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Mp2Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Mp2Settings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Mp2Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Placeholder documentation for Mp2Settings

=head1 ATTRIBUTES


=head2 Bitrate => Num

  Average bitrate in bits/second.


=head2 CodingMode => Str

  The MPEG2 Audio coding mode. Valid values are codingMode10 (for mono)
or codingMode20 (for stereo).


=head2 SampleRate => Num

  Sample rate in Hz.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

