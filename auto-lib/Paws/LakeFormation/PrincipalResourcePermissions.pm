package Paws::LakeFormation::PrincipalResourcePermissions;
  use Moose;
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PermissionsWithGrantOption => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Principal => (is => 'ro', isa => 'Paws::LakeFormation::DataLakePrincipal');
  has Resource => (is => 'ro', isa => 'Paws::LakeFormation::Resource');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::PrincipalResourcePermissions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::PrincipalResourcePermissions object:

  $service_obj->Method(Att1 => { Permissions => $value, ..., Resource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::PrincipalResourcePermissions object:

  $result = $service_obj->Method(...);
  $result->Att1->Permissions

=head1 DESCRIPTION

The permissions granted or revoked on a resource.

=head1 ATTRIBUTES


=head2 Permissions => ArrayRef[Str|Undef]

  The permissions to be granted or revoked on the resource.


=head2 PermissionsWithGrantOption => ArrayRef[Str|Undef]

  Indicates whether to grant the ability to grant permissions (as a
subset of permissions granted).


=head2 Principal => L<Paws::LakeFormation::DataLakePrincipal>

  The Data Lake principal to be granted or revoked permissions.


=head2 Resource => L<Paws::LakeFormation::Resource>

  The resource where permissions are to be granted or revoked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

