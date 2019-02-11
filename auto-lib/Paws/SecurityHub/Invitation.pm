package Paws::SecurityHub::Invitation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has InvitationId => (is => 'ro', isa => 'Str');
  has InvitedAt => (is => 'ro', isa => 'Str');
  has MemberStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Invitation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Invitation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., MemberStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Invitation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The details of an invitation sent to an AWS account by the Security Hub
master account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The account ID of the master Security Hub account who sent the
invitation.


=head2 InvitationId => Str

  The ID of the invitation sent by the master Security Hub account.


=head2 InvitedAt => Str

  The timestamp of when the invitation was sent.


=head2 MemberStatus => Str

  The current relationship status between the inviter and invitee
accounts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

