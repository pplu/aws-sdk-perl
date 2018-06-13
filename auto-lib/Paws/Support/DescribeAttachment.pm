
package Paws::Support::DescribeAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeAttachmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeAttachment - Arguments for method DescribeAttachment on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAttachment on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAttachment.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeAttachmentResponse = $support->DescribeAttachment(
      AttachmentId => 'MyAttachmentId',

    );

    # Results:
    my $Attachment = $DescribeAttachmentResponse->Attachment;

    # Returns a L<Paws::Support::DescribeAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the attachment to return. Attachment IDs are returned by the
DescribeCommunications operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAttachment in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

