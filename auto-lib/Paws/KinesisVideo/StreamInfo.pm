package Paws::KinesisVideo::StreamInfo;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataRetentionInHours => (is => 'ro', isa => 'Int');
  has DeviceName => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MediaType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::StreamInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideo::StreamInfo object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideo::StreamInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

An object describing a Kinesis video stream.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  A time stamp that indicates when the stream was created.


=head2 DataRetentionInHours => Int

  How long the stream retains data, in hours.


=head2 DeviceName => Str

  The name of the device that is associated with the stream.


=head2 KmsKeyId => Str

  The ID of the AWS Key Management Service (AWS KMS) key that Kinesis
Video Streams uses to encrypt data on the stream.


=head2 MediaType => Str

  The C<MediaType> of the stream.


=head2 Status => Str

  The status of the stream.


=head2 StreamARN => Str

  The Amazon Resource Name (ARN) of the stream.


=head2 StreamName => Str

  The name of the stream.


=head2 Version => Str

  The version of the stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

