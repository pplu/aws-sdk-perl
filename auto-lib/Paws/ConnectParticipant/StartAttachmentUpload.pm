
package Paws::ConnectParticipant::StartAttachmentUpload;
  use Moose;
  has AttachmentName => (is => 'ro', isa => 'Str', required => 1);
  has AttachmentSizeInBytes => (is => 'ro', isa => 'Int', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAttachmentUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/start-attachment-upload');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::StartAttachmentUploadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::StartAttachmentUpload - Arguments for method StartAttachmentUpload on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAttachmentUpload on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method StartAttachmentUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAttachmentUpload.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $StartAttachmentUploadResponse =
      $participant . connect->StartAttachmentUpload(
      AttachmentName        => 'MyAttachmentName',
      AttachmentSizeInBytes => 1,
      ClientToken           => 'MyNonEmptyClientToken',
      ConnectionToken       => 'MyParticipantToken',
      ContentType           => 'MyContentType',

      );

    # Results:
    my $AttachmentId   = $StartAttachmentUploadResponse->AttachmentId;
    my $UploadMetadata = $StartAttachmentUploadResponse->UploadMetadata;

  # Returns a L<Paws::ConnectParticipant::StartAttachmentUploadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/StartAttachmentUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentName => Str

A case-sensitive name of the attachment being uploaded.



=head2 B<REQUIRED> AttachmentSizeInBytes => Int

The size of the attachment in bytes.



=head2 B<REQUIRED> ClientToken => Str

A unique case sensitive identifier to support idempotency of request.



=head2 B<REQUIRED> ConnectionToken => Str

The authentication token associated with the participant's connection.



=head2 B<REQUIRED> ContentType => Str

Describes the MIME file type of the attachment. For a list of supported
file types, see Feature specifications
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
in the I<Amazon Connect Administrator Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAttachmentUpload in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

