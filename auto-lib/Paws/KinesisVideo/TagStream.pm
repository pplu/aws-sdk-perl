
package Paws::KinesisVideo::TagStream;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::KinesisVideo::ResourceTags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tagStream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::TagStreamOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::TagStream - Arguments for method TagStream on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagStream on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method TagStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagStream.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $TagStreamOutput = $kinesisvideo->TagStream(
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/TagStream>

=head1 ATTRIBUTES


=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the resource that you want to add the
tag or tags to.



=head2 StreamName => Str

The name of the stream that you want to add the tag or tags to.



=head2 B<REQUIRED> Tags => L<Paws::KinesisVideo::ResourceTags>

A list of tags to associate with the specified stream. Each tag is a
key-value pair (the value is optional).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagStream in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

