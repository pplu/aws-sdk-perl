package Paws::MediaLive::HlsTimedMetadataScheduleActionSettings;
  use Moose;
  has Id3 => (is => 'ro', isa => 'Str', request_name => 'id3', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsTimedMetadataScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsTimedMetadataScheduleActionSettings object:

  $service_obj->Method(Att1 => { Id3 => $value, ..., Id3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsTimedMetadataScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Id3

=head1 DESCRIPTION

Settings for the action to emit HLS metadata

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id3 => Str

  Base64 string formatted according to the ID3 specification:
http://id3.org/id3v2.4.0-structure



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

