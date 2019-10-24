# Generated from default/object.tt
package Paws::SecurityHub::Invitation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has InvitationId => (is => 'ro', isa => Str);
  has InvitedAt => (is => 'ro', isa => Str);
  has MemberStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InvitationId' => {
                                   'type' => 'Str'
                                 },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'MemberStatus' => {
                                   'type' => 'Str'
                                 },
               'InvitedAt' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


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

Details about an invitation.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The account ID of the Security Hub master account that the invitation
was sent from.


=head2 InvitationId => Str

  The ID of the invitation sent to the member account.


=head2 InvitedAt => Str

  The timestamp of when the invitation was sent.


=head2 MemberStatus => Str

  The current status of the association between member and master
accounts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

