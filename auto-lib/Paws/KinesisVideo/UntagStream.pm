
package Paws::KinesisVideo::UntagStream;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has TagKeyList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/untagStream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::UntagStreamOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::UntagStream - Arguments for method UntagStream on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagStream on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method UntagStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagStream.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $UntagStreamOutput = $kinesisvideo->UntagStream(
      TagKeyList => [
        'MyTagKey', ...    # min: 1, max: 128
      ],
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/UntagStream>

=head1 ATTRIBUTES


=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream that you want to remove
tags from.



=head2 StreamName => Str

The name of the stream that you want to remove tags from.



=head2 B<REQUIRED> TagKeyList => ArrayRef[Str|Undef]

A list of the keys of the tags that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagStream in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

