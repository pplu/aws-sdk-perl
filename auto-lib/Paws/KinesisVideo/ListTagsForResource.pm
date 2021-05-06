
package Paws::KinesisVideo::ListTagsForResource;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListTagsForResource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::ListTagsForResourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $ListTagsForResourceOutput = $kinesisvideo->ListTagsForResource(
      ResourceARN => 'MyResourceARN',
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceOutput->NextToken;
    my $Tags      = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::KinesisVideo::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/ListTagsForResource>

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify this parameter and the result of a ListTagsForResource
call is truncated, the response includes a token that you can use in
the next request to fetch the next batch of tags.



=head2 B<REQUIRED> ResourceARN => Str

The ARN of the signaling channel for which you want to list tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

