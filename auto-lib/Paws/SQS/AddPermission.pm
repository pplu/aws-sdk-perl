
package Paws::SQS::AddPermission;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has AWSAccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::AddPermission - Arguments for method AddPermission on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddPermission on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method AddPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddPermission.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    $sqs->AddPermission(
      AWSAccountIds => [ 'MyString', ... ],
      Actions       => [ 'MyString', ... ],
      Label         => 'MyString',
      QueueUrl      => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/AddPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

The action the client wants to allow for the specified principal. Valid
values: the name of any action or C<*>.

For more information about these actions, see Overview of Managing
Access Permissions to Your Amazon Simple Queue Service Resource
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-overview-of-managing-access.html)
in the I<Amazon Simple Queue Service Developer Guide>.

Specifying C<SendMessage>, C<DeleteMessage>, or
C<ChangeMessageVisibility> for C<ActionName.n> also grants permissions
for the corresponding batch versions of those actions:
C<SendMessageBatch>, C<DeleteMessageBatch>, and
C<ChangeMessageVisibilityBatch>.



=head2 B<REQUIRED> AWSAccountIds => ArrayRef[Str|Undef]

The AWS account number of the principal
(http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P) who is
given permission. The principal must have an AWS account, but does not
need to be signed up for Amazon SQS. For information about locating the
AWS account identification, see Your AWS Identifiers
(http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html#sqs-api-request-authentication)
in the I<Amazon Simple Queue Service Developer Guide>.



=head2 B<REQUIRED> Label => Str

The unique identification of the permission you're setting (for
example, C<AliceSendMessage>). Maximum 80 characters. Allowed
characters include alphanumeric characters, hyphens (C<->), and
underscores (C<_>).



=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue to which permissions are added.

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddPermission in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

