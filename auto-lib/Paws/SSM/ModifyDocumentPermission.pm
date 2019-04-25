
package Paws::SSM::ModifyDocumentPermission;
  use Moose;
  has AccountIdsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AccountIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PermissionType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDocumentPermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ModifyDocumentPermissionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ModifyDocumentPermission - Arguments for method ModifyDocumentPermission on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDocumentPermission on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ModifyDocumentPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDocumentPermission.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ModifyDocumentPermissionResponse = $ssm->ModifyDocumentPermission(
      Name               => 'MyDocumentName',
      PermissionType     => 'Share',
      AccountIdsToAdd    => [ 'MyAccountId', ... ],    # OPTIONAL
      AccountIdsToRemove => [ 'MyAccountId', ... ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ModifyDocumentPermission>

=head1 ATTRIBUTES


=head2 AccountIdsToAdd => ArrayRef[Str|Undef]

The AWS user accounts that should have access to the document. The
account IDs can either be a group of account IDs or I<All>.



=head2 AccountIdsToRemove => ArrayRef[Str|Undef]

The AWS user accounts that should no longer have access to the
document. The AWS user account can either be a group of account IDs or
I<All>. This action has a higher priority than I<AccountIdsToAdd>. If
you specify an account ID to add and the same ID to remove, the system
removes access to the document.



=head2 B<REQUIRED> Name => Str

The name of the document that you want to share.



=head2 B<REQUIRED> PermissionType => Str

The permission type for the document. The permission type can be
I<Share>.

Valid values are: C<"Share">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDocumentPermission in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

