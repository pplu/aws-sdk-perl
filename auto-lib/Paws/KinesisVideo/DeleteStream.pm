
package Paws::KinesisVideo::DeleteStream;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteStream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DeleteStreamOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DeleteStream - Arguments for method DeleteStream on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStream on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DeleteStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStream.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DeleteStreamOutput = $kinesisvideo->DeleteStream(
      StreamARN      => 'MyResourceARN',
      CurrentVersion => 'MyVersion',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DeleteStream>

=head1 ATTRIBUTES


=head2 CurrentVersion => Str

Optional: The version of the stream that you want to delete.

Specify the version as a safeguard to ensure that your are deleting the
correct stream. To get the stream version, use the C<DescribeStream>
API.

If not specified, only the C<CreationTime> is checked before deleting
the stream.



=head2 B<REQUIRED> StreamARN => Str

The Amazon Resource Name (ARN) of the stream that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStream in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

