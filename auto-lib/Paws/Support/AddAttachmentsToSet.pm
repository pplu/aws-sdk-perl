
package Paws::Support::AddAttachmentsToSet;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::Support::Attachment]', traits => ['NameInRequest'], request_name => 'attachments' , required => 1);
  has AttachmentSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentSetId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddAttachmentsToSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::AddAttachmentsToSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::AddAttachmentsToSet - Arguments for method AddAttachmentsToSet on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddAttachmentsToSet on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method AddAttachmentsToSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddAttachmentsToSet.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $AddAttachmentsToSetResponse = $support->AddAttachmentsToSet(
      Attachments => [
        {
          Data     => 'BlobData',      # OPTIONAL
          FileName => 'MyFileName',    # OPTIONAL
        },
        ...
      ],
      AttachmentSetId => 'MyAttachmentSetId',    # OPTIONAL
    );

    # Results:
    my $AttachmentSetId = $AddAttachmentsToSetResponse->AttachmentSetId;
    my $ExpiryTime      = $AddAttachmentsToSetResponse->ExpiryTime;

    # Returns a L<Paws::Support::AddAttachmentsToSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/AddAttachmentsToSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attachments => ArrayRef[L<Paws::Support::Attachment>]

One or more attachments to add to the set. The limit is 3 attachments
per set, and the size limit is 5 MB per attachment.



=head2 AttachmentSetId => Str

The ID of the attachment set. If an C<attachmentSetId> is not
specified, a new attachment set is created, and the ID of the set is
returned in the response. If an C<attachmentSetId> is specified, the
attachments are added to the specified set, if it exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddAttachmentsToSet in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

