
package Paws::KinesisVideo::UpdateStream;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str');
  has MediaType => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateStream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::UpdateStreamOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::UpdateStream - Arguments for method UpdateStream on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStream on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method UpdateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStream.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $UpdateStreamOutput = $kinesisvideo->UpdateStream(
      CurrentVersion => 'MyVersion',
      DeviceName     => 'MyDeviceName',     # OPTIONAL
      MediaType      => 'MyMediaType',      # OPTIONAL
      StreamARN      => 'MyResourceARN',    # OPTIONAL
      StreamName     => 'MyStreamName',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/UpdateStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentVersion => Str

The version of the stream whose metadata you want to update.



=head2 DeviceName => Str

The name of the device that is writing to the stream.

In the current implementation, Kinesis Video Streams does not use this
name.



=head2 MediaType => Str

The stream's media type. Use C<MediaType> to specify the type of
content that the stream contains to the consumers of the stream. For
more information about media types, see Media Types
(http://www.iana.org/assignments/media-types/media-types.xhtml). If you
choose to specify the C<MediaType>, see Naming Requirements
(https://tools.ietf.org/html/rfc6838#section-4.2).

To play video on the console, you must specify the correct video type.
For example, if the video in the stream is H.264, specify C<video/h264>
as the C<MediaType>.



=head2 StreamARN => Str

The ARN of the stream whose metadata you want to update.



=head2 StreamName => Str

The name of the stream whose metadata you want to update.

The stream name is an identifier for the stream, and must be unique for
each account and region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStream in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

