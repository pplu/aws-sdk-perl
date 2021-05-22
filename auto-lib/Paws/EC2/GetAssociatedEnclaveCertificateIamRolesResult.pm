
package Paws::EC2::GetAssociatedEnclaveCertificateIamRolesResult;
  use Moose;
  has AssociatedRoles => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AssociatedRole]', request_name => 'associatedRoleSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetAssociatedEnclaveCertificateIamRolesResult

=head1 ATTRIBUTES


=head2 AssociatedRoles => ArrayRef[L<Paws::EC2::AssociatedRole>]

Information about the associated IAM roles.


=head2 _request_id => Str


=cut

