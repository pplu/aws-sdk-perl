package Paws::Transcribe::Media;
  use Moose;
  has MediaFileUri => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::Media

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::Media object:

  $service_obj->Method(Att1 => { MediaFileUri => $value, ..., MediaFileUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::Media object:

  $result = $service_obj->Method(...);
  $result->Att1->MediaFileUri

=head1 DESCRIPTION

Describes the input media file in a transcription request.

=head1 ATTRIBUTES


=head2 MediaFileUri => Str

  The S3 location of the input media file. The URI must be in the same
region as the API endpoint that you are calling. The general form is:

C<https://s3-E<lt>aws-regionE<gt>.amazonaws.com/E<lt>bucket-nameE<gt>/E<lt>keyprefixE<gt>/E<lt>objectkeyE<gt>>

For example:

C<https://s3-us-east-1.amazonaws.com/examplebucket/example.mp4>

C<https://s3-us-east-1.amazonaws.com/examplebucket/mediadocs/example.mp4>

For more information about S3 object names, see Object Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys)
in the I<Amazon S3 Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

