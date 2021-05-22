
package Paws::KinesisVideo::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TagResource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::TagResourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::TagResource - Arguments for method TagResource on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $TagResourceOutput = $kinesisvideo->TagResource(
      ResourceARN => 'MyResourceARN',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the signaling channel to which you
want to add tags.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::KinesisVideo::Tag>]

A list of tags to associate with the specified signaling channel. Each
tag is a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

