package Paws::ManagedBlockchain::Invitation;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has InvitationId => (is => 'ro', isa => 'Str');
  has NetworkSummary => (is => 'ro', isa => 'Paws::ManagedBlockchain::NetworkSummary');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::Invitation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::Invitation object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::Invitation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

An invitation to an AWS account to create a member and join the
network.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date and time that the invitation was created.


=head2 ExpirationDate => Str

  The date and time that the invitation expires. This is the
C<CreationDate> plus the C<ProposalDurationInHours> that is specified
in the C<ProposalThresholdPolicy>. After this date and time, the
invitee can no longer create a member and join the network using this
C<InvitationId>.


=head2 InvitationId => Str

  The unique identifier for the invitation.


=head2 NetworkSummary => L<Paws::ManagedBlockchain::NetworkSummary>

  


=head2 Status => Str

  The status of the invitation:

=over

=item *

C<PENDING> - The invitee has not created a member to join the network,
and the invitation has not yet expired.

=item *

C<ACCEPTING> - The invitee has begun creating a member, and creation
has not yet completed.

=item *

C<ACCEPTED> - The invitee created a member and joined the network using
the C<InvitationID>.

=item *

C<REJECTED> - The invitee rejected the invitation.

=item *

C<EXPIRED> - The invitee neither created a member nor rejected the
invitation before the C<ExpirationDate>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

