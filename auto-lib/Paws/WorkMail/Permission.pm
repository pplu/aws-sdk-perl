package Paws::WorkMail::Permission;
  use Moose;
  has GranteeId => (is => 'ro', isa => 'Str', required => 1);
  has GranteeType => (is => 'ro', isa => 'Str', required => 1);
  has PermissionValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::Permission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::Permission object:

  $service_obj->Method(Att1 => { GranteeId => $value, ..., PermissionValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::Permission object:

  $result = $service_obj->Method(...);
  $result->Att1->GranteeId

=head1 DESCRIPTION

Permission granted to an entity (user, group) to access a certain
aspect of another entity's mailbox.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GranteeId => Str

  The identifier of the entity (user or group) to which the permissions
are granted.


=head2 B<REQUIRED> GranteeType => Str

  The type of entity (user, group) of the entity referred to in
GranteeId.


=head2 B<REQUIRED> PermissionValues => ArrayRef[Str|Undef]

  The permissions granted to the grantee. SEND_AS allows the grantee to
send email as the owner of the mailbox (the grantee is not mentioned on
these emails). SEND_ON_BEHALF allows the grantee to send email on
behalf of the owner of the mailbox (the grantee is not mentioned as the
physical sender of these emails). FULL_ACCESS allows the grantee full
access to the mailbox, irrespective of other folder-level permissions
set on the mailbox.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

