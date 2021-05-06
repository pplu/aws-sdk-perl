
package Paws::KinesisVideo::ListTagsForStream;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listTagsForStream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::ListTagsForStreamOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListTagsForStream - Arguments for method ListTagsForStream on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForStream on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method ListTagsForStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForStream.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $ListTagsForStreamOutput = $kinesisvideo->ListTagsForStream(
      NextToken  => 'MyNextToken',      # OPTIONAL
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForStreamOutput->NextToken;
    my $Tags      = $ListTagsForStreamOutput->Tags;

    # Returns a L<Paws::KinesisVideo::ListTagsForStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/ListTagsForStream>

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify this parameter and the result of a C<ListTagsForStream>
call is truncated, the response includes a token that you can use in
the next request to fetch the next batch of tags.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream that you want to list tags
for.



=head2 StreamName => Str

The name of the stream that you want to list tags for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForStream in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

