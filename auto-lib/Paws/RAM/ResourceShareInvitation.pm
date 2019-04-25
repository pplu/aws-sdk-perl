package Paws::RAM::ResourceShareInvitation;
  use Moose;
  has InvitationTimestamp => (is => 'ro', isa => 'Str', request_name => 'invitationTimestamp', traits => ['NameInRequest']);
  has ReceiverAccountId => (is => 'ro', isa => 'Str', request_name => 'receiverAccountId', traits => ['NameInRequest']);
  has ResourceShareArn => (is => 'ro', isa => 'Str', request_name => 'resourceShareArn', traits => ['NameInRequest']);
  has ResourceShareAssociations => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShareAssociation]', request_name => 'resourceShareAssociations', traits => ['NameInRequest']);
  has ResourceShareInvitationArn => (is => 'ro', isa => 'Str', request_name => 'resourceShareInvitationArn', traits => ['NameInRequest']);
  has ResourceShareName => (is => 'ro', isa => 'Str', request_name => 'resourceShareName', traits => ['NameInRequest']);
  has SenderAccountId => (is => 'ro', isa => 'Str', request_name => 'senderAccountId', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ResourceShareInvitation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::ResourceShareInvitation object:

  $service_obj->Method(Att1 => { InvitationTimestamp => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::ResourceShareInvitation object:

  $result = $service_obj->Method(...);
  $result->Att1->InvitationTimestamp

=head1 DESCRIPTION

Describes an invitation to join a resource share.

=head1 ATTRIBUTES


=head2 InvitationTimestamp => Str

  The date and time when the invitation was sent.


=head2 ReceiverAccountId => Str

  The ID of the AWS account that received the invitation.


=head2 ResourceShareArn => Str

  The Amazon Resource Name (ARN) of the resource share.


=head2 ResourceShareAssociations => ArrayRef[L<Paws::RAM::ResourceShareAssociation>]

  The resources associated with the resource share.


=head2 ResourceShareInvitationArn => Str

  The Amazon Resource Name (ARN) of the invitation.


=head2 ResourceShareName => Str

  The name of the resource share.


=head2 SenderAccountId => Str

  The ID of the AWS account that sent the invitation.


=head2 Status => Str

  The status of the invitation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

