# Generated from default/object.tt
package Paws::RAM::ResourceShareInvitation;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_ResourceShareAssociation/;
  has InvitationTimestamp => (is => 'ro', isa => Str);
  has ReceiverAccountId => (is => 'ro', isa => Str);
  has ResourceShareArn => (is => 'ro', isa => Str);
  has ResourceShareAssociations => (is => 'ro', isa => ArrayRef[RAM_ResourceShareAssociation]);
  has ResourceShareInvitationArn => (is => 'ro', isa => Str);
  has ResourceShareName => (is => 'ro', isa => Str);
  has SenderAccountId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceShareName' => {
                                        'type' => 'Str'
                                      },
               'Status' => {
                             'type' => 'Str'
                           },
               'ResourceShareAssociations' => {
                                                'class' => 'Paws::RAM::ResourceShareAssociation',
                                                'type' => 'ArrayRef[RAM_ResourceShareAssociation]'
                                              },
               'ResourceShareArn' => {
                                       'type' => 'Str'
                                     },
               'ReceiverAccountId' => {
                                        'type' => 'Str'
                                      },
               'SenderAccountId' => {
                                      'type' => 'Str'
                                    },
               'InvitationTimestamp' => {
                                          'type' => 'Str'
                                        },
               'ResourceShareInvitationArn' => {
                                                 'type' => 'Str'
                                               }
             },
  'NameInRequest' => {
                       'ResourceShareName' => 'resourceShareName',
                       'Status' => 'status',
                       'ResourceShareAssociations' => 'resourceShareAssociations',
                       'ResourceShareArn' => 'resourceShareArn',
                       'ReceiverAccountId' => 'receiverAccountId',
                       'SenderAccountId' => 'senderAccountId',
                       'InvitationTimestamp' => 'invitationTimestamp',
                       'ResourceShareInvitationArn' => 'resourceShareInvitationArn'
                     }
}
;
    return $Params_map;
  }


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


=head2 ResourceShareAssociations => ArrayRef[RAM_ResourceShareAssociation]

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

