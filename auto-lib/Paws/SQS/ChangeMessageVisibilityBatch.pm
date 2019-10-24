# Generated from callargs_class.tt

package Paws::SQS::ChangeMessageVisibilityBatch;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SQS::Types qw/SQS_ChangeMessageVisibilityBatchRequestEntry/;
  has Entries => (is => 'ro', isa => ArrayRef[SQS_ChangeMessageVisibilityBatchRequestEntry], required => 1, predicate => 1);
  has QueueUrl => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ChangeMessageVisibilityBatch');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SQS::ChangeMessageVisibilityBatchResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ChangeMessageVisibilityBatchResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueueUrl' => {
                               'type' => 'Str'
                             },
               'Entries' => {
                              'class' => 'Paws::SQS::ChangeMessageVisibilityBatchRequestEntry',
                              'type' => 'ArrayRef[SQS_ChangeMessageVisibilityBatchRequestEntry]'
                            }
             },
  'NameInRequest' => {
                       'Entries' => 'ChangeMessageVisibilityBatchRequestEntry'
                     },
  'IsRequired' => {
                    'QueueUrl' => 1,
                    'Entries' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ChangeMessageVisibilityBatch - Arguments for method ChangeMessageVisibilityBatch on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeMessageVisibilityBatch on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method ChangeMessageVisibilityBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeMessageVisibilityBatch.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $ChangeMessageVisibilityBatchResult = $sqs->ChangeMessageVisibilityBatch(
      Entries => [
        {
          Id                => 'MyString',
          ReceiptHandle     => 'MyString',
          VisibilityTimeout => 1,            # OPTIONAL
        },
        ...
      ],
      QueueUrl => 'MyString',

    );

    # Results:
    my $Failed     = $ChangeMessageVisibilityBatchResult->Failed;
    my $Successful = $ChangeMessageVisibilityBatchResult->Successful;

    # Returns a L<Paws::SQS::ChangeMessageVisibilityBatchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/ChangeMessageVisibilityBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[SQS_ChangeMessageVisibilityBatchRequestEntry]

A list of receipt handles of the messages for which the visibility
timeout must be changed.



=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue whose messages' visibility is changed.

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeMessageVisibilityBatch in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

