package Paws::KMS::GrantListEntry;
  use Moose;
  has Constraints => (is => 'ro', isa => 'Paws::KMS::GrantConstraints');
  has GranteePrincipal => (is => 'ro', isa => 'Str');
  has GrantId => (is => 'ro', isa => 'Str');
  has IssuingAccount => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RetiringPrincipal => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GrantListEntry

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 Constraints => L<Paws::KMS::GrantConstraints>

  Specifies the conditions under which the actions specified by the
C<Operations> parameter are allowed.

=head2 GranteePrincipal => Str

  The principal that receives the grant permission.

=head2 GrantId => Str

  Unique grant identifier.

=head2 IssuingAccount => Str

  The account under which the grant was issued.

=head2 Operations => ArrayRef[Str]

  List of operations permitted by the grant. This can be any combination
of one or more of the following values:

=over

=item 1. Decrypt

=item 2. Encrypt

=item 3. GenerateDataKey

=item 4. GenerateDataKeyWithoutPlaintext

=item 5. ReEncryptFrom

=item 6. ReEncryptTo

=item 7. CreateGrant

=back

=head2 RetiringPrincipal => Str

  The principal that can retire the account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

