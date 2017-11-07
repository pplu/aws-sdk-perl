package Paws::ElasticTranscoder::DetectedProperties;
  use Moose;
  has DurationMillis => (is => 'ro', isa => 'Int');
  has FileSize => (is => 'ro', isa => 'Int');
  has FrameRate => (is => 'ro', isa => 'Str');
  has Height => (is => 'ro', isa => 'Int');
  has Width => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::DetectedProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::DetectedProperties object:

  $service_obj->Method(Att1 => { DurationMillis => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::DetectedProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationMillis

=head1 DESCRIPTION

The detected properties of the input file. Elastic Transcoder
identifies these values from the input file.

=head1 ATTRIBUTES


=head2 DurationMillis => Int

  The detected duration of the input file, in milliseconds.


=head2 FileSize => Int

  The detected file size of the input file, in bytes.


=head2 FrameRate => Str

  The detected frame rate of the input file, in frames per second.


=head2 Height => Int

  The detected height of the input file, in pixels.


=head2 Width => Int

  The detected width of the input file, in pixels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

