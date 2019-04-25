
package Paws::WorkMail::PutMailboxPermissions;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has GranteeId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has PermissionValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMailboxPermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::PutMailboxPermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::PutMailboxPermissions - Arguments for method PutMailboxPermissions on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMailboxPermissions on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method PutMailboxPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMailboxPermissions.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $PutMailboxPermissionsResponse = $workmail->PutMailboxPermissions(
      EntityId         => 'MyWorkMailIdentifier',
      GranteeId        => 'MyWorkMailIdentifier',
      OrganizationId   => 'MyOrganizationId',
      PermissionValues => [
        'FULL_ACCESS', ...    # values: FULL_ACCESS, SEND_AS, SEND_ON_BEHALF
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/PutMailboxPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The identifier of the entity (user or group) for which to update
mailbox permissions.



=head2 B<REQUIRED> GranteeId => Str

The identifier of the entity (user or group) to which to grant the
permissions.



=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization under which the entity (user or
group) exists.



=head2 B<REQUIRED> PermissionValues => ArrayRef[Str|Undef]

The permissions granted to the grantee. SEND_AS allows the grantee to
send email as the owner of the mailbox (the grantee is not mentioned on
these emails). SEND_ON_BEHALF allows the grantee to send email on
behalf of the owner of the mailbox (the grantee is not mentioned as the
physical sender of these emails). FULL_ACCESS allows the grantee full
access to the mailbox, irrespective of other folder-level permissions
set on the mailbox.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMailboxPermissions in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

