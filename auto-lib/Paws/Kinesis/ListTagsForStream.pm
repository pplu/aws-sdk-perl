
package Paws::Kinesis::ListTagsForStream;
  use Moose;
  has ExclusiveStartTagKey => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::ListTagsForStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListTagsForStream - Arguments for method ListTagsForStream on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForStream on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method ListTagsForStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForStream.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $ListTagsForStreamOutput = $kinesis->ListTagsForStream(
      StreamName           => 'MyStreamName',
      ExclusiveStartTagKey => 'MyTagKey',       # OPTIONAL
      Limit                => 1,                # OPTIONAL
    );

    # Results:
    my $HasMoreTags = $ListTagsForStreamOutput->HasMoreTags;
    my $Tags        = $ListTagsForStreamOutput->Tags;

    # Returns a L<Paws::Kinesis::ListTagsForStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/ListTagsForStream>

=head1 ATTRIBUTES


=head2 ExclusiveStartTagKey => Str

The key to use as the starting point for the list of tags. If this
parameter is set, C<ListTagsForStream> gets all tags that occur after
C<ExclusiveStartTagKey>.



=head2 Limit => Int

The number of tags to return. If this number is less than the total
number of tags associated with the stream, C<HasMoreTags> is set to
C<true>. To list additional tags, set C<ExclusiveStartTagKey> to the
last key in the response.



=head2 B<REQUIRED> StreamName => Str

The name of the stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForStream in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

