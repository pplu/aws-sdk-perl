
package Paws::Firehose::ListTagsForDeliveryStream;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has ExclusiveStartTagKey => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::ListTagsForDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ListTagsForDeliveryStream - Arguments for method ListTagsForDeliveryStream on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForDeliveryStream on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method ListTagsForDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForDeliveryStream.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $ListTagsForDeliveryStreamOutput = $firehose->ListTagsForDeliveryStream(
      DeliveryStreamName   => 'MyDeliveryStreamName',
      ExclusiveStartTagKey => 'MyTagKey',               # OPTIONAL
      Limit                => 1,                        # OPTIONAL
    );

    # Results:
    my $HasMoreTags = $ListTagsForDeliveryStreamOutput->HasMoreTags;
    my $Tags        = $ListTagsForDeliveryStreamOutput->Tags;

    # Returns a L<Paws::Firehose::ListTagsForDeliveryStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/ListTagsForDeliveryStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream whose tags you want to list.



=head2 ExclusiveStartTagKey => Str

The key to use as the starting point for the list of tags. If you set
this parameter, C<ListTagsForDeliveryStream> gets all tags that occur
after C<ExclusiveStartTagKey>.



=head2 Limit => Int

The number of tags to return. If this number is less than the total
number of tags associated with the delivery stream, C<HasMoreTags> is
set to C<true> in the response. To list additional tags, set
C<ExclusiveStartTagKey> to the last key in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

