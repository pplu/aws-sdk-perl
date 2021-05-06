
package Paws::Firehose::UntagDeliveryStream;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::UntagDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::UntagDeliveryStream - Arguments for method UntagDeliveryStream on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagDeliveryStream on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method UntagDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagDeliveryStream.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $UntagDeliveryStreamOutput = $firehose->UntagDeliveryStream(
      DeliveryStreamName => 'MyDeliveryStreamName',
      TagKeys            => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/UntagDeliveryStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag keys. Each corresponding tag is removed from the delivery
stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

