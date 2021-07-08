
package Paws::ConnectParticipant::GetAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/attachment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::GetAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetAttachment - Arguments for method GetAttachment on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAttachment on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method GetAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAttachment.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $GetAttachmentResponse = $participant . connect->GetAttachment(
      AttachmentId    => 'MyArtifactId',
      ConnectionToken => 'MyParticipantToken',

    );

    # Results:
    my $Url       = $GetAttachmentResponse->Url;
    my $UrlExpiry = $GetAttachmentResponse->UrlExpiry;

    # Returns a L<Paws::ConnectParticipant::GetAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/GetAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

A unique identifier for the attachment.



=head2 B<REQUIRED> ConnectionToken => Str

The authentication token associated with the participant's connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAttachment in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

