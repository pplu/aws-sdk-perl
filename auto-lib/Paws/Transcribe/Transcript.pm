package Paws::Transcribe::Transcript;
  use Moose;
  has TranscriptFileUri => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::Transcript

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::Transcript object:

  $service_obj->Method(Att1 => { TranscriptFileUri => $value, ..., TranscriptFileUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::Transcript object:

  $result = $service_obj->Method(...);
  $result->Att1->TranscriptFileUri

=head1 DESCRIPTION

Identifies the location of a transcription.

=head1 ATTRIBUTES


=head2 TranscriptFileUri => Str

  The location where the transcription is stored.

Use this URI to access the transcription. If you specified an S3 bucket
in the C<OutputBucketName> field when you created the job, this is the
URI of that bucket. If you chose to store the transcription in Amazon
Transcribe, this is a shareable URL that provides secure access to that
location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

