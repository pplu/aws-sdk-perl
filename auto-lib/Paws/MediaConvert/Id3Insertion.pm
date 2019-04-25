package Paws::MediaConvert::Id3Insertion;
  use Moose;
  has Id3 => (is => 'ro', isa => 'Str', request_name => 'id3', traits => ['NameInRequest']);
  has Timecode => (is => 'ro', isa => 'Str', request_name => 'timecode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Id3Insertion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Id3Insertion object:

  $service_obj->Method(Att1 => { Id3 => $value, ..., Timecode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Id3Insertion object:

  $result = $service_obj->Method(...);
  $result->Att1->Id3

=head1 DESCRIPTION

To insert ID3 tags in your output, specify two values. Use ID3 tag
(Id3) to specify the base 64 encoded string and use Timecode (TimeCode)
to specify the time when the tag should be inserted. To insert multiple
ID3 tags in your output, create multiple instances of ID3 insertion
(Id3Insertion).

=head1 ATTRIBUTES


=head2 Id3 => Str

  Use ID3 tag (Id3) to provide a tag value in base64-encode format.


=head2 Timecode => Str

  Provide a Timecode (TimeCode) in HH:MM:SS:FF or HH:MM:SS;FF format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

