package Paws::KMS::GrantListEntry;
  use Moose;
  has Constraints => (is => 'ro', isa => 'Paws::KMS::GrantConstraints');
  has CreationDate => (is => 'ro', isa => 'Str');
  has GranteePrincipal => (is => 'ro', isa => 'Str');
  has GrantId => (is => 'ro', isa => 'Str');
  has IssuingAccount => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RetiringPrincipal => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GrantListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::GrantListEntry object:

  $service_obj->Method(Att1 => { Constraints => $value, ..., RetiringPrincipal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::GrantListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Constraints

=head1 DESCRIPTION

Contains information about an entry in a list of grants.

=head1 ATTRIBUTES


=head2 Constraints => L<Paws::KMS::GrantConstraints>

  A list of key-value pairs that must be present in the encryption
context of certain subsequent operations that the grant allows.


=head2 CreationDate => Str

  The date and time when the grant was created.


=head2 GranteePrincipal => Str

  The principal that receives the grant's permissions.


=head2 GrantId => Str

  The unique identifier for the grant.


=head2 IssuingAccount => Str

  The AWS account under which the grant was issued.


=head2 KeyId => Str

  The unique identifier for the customer master key (CMK) to which the
grant applies.


=head2 Name => Str

  The friendly name that identifies the grant. If a name was provided in
the CreateGrant request, that name is returned. Otherwise this value is
null.


=head2 Operations => ArrayRef[Str|Undef]

  The list of operations permitted by the grant.


=head2 RetiringPrincipal => Str

  The principal that can retire the grant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

