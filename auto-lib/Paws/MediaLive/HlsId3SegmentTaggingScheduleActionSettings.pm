package Paws::MediaLive::HlsId3SegmentTaggingScheduleActionSettings;
  use Moose;
  has Tag => (is => 'ro', isa => 'Str', request_name => 'tag', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsId3SegmentTaggingScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsId3SegmentTaggingScheduleActionSettings object:

  $service_obj->Method(Att1 => { Tag => $value, ..., Tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsId3SegmentTaggingScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Tag

=head1 DESCRIPTION

Settings for the action to insert a user-defined ID3 tag in each HLS
segment

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tag => Str

  ID3 tag to insert into each segment. Supports special keyword
identifiers to substitute in segment-related values.\nSupported keyword
identifiers:
https://docs.aws.amazon.com/medialive/latest/ug/variable-data-identifiers.html



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

