
package Paws::SQS::SendMessageBatch;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::SQS::SendMessageBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'SendMessageBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessageBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::SendMessageBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageBatchResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SendMessageBatch - Arguments for method SendMessageBatch on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendMessageBatch on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method SendMessageBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendMessageBatch.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $SendMessageBatchResult = $sqs->SendMessageBatch(
      Entries => [
        {
          Id                => 'MyString',
          MessageBody       => 'MyString',
          DelaySeconds      => 1,            # OPTIONAL
          MessageAttributes => {
            'MyString' => {
              DataType         => 'MyString',
              BinaryListValues => [
                'BlobBinary', ...            # OPTIONAL
              ],                             # OPTIONAL
              BinaryValue      => 'BlobBinary',           # OPTIONAL
              StringListValues => [ 'MyString', ... ],    # OPTIONAL
              StringValue      => 'MyString',
            },
          },    # OPTIONAL
          MessageDeduplicationId => 'MyString',
          MessageGroupId         => 'MyString',
        },
        ...
      ],
      QueueUrl => 'MyString',

    );

    # Results:
    my $Failed     = $SendMessageBatchResult->Failed;
    my $Successful = $SendMessageBatchResult->Successful;

    # Returns a L<Paws::SQS::SendMessageBatchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/SendMessageBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::SQS::SendMessageBatchRequestEntry>]

A list of SendMessageBatchRequestEntry items.



=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue to which batched messages are sent.

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendMessageBatch in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

