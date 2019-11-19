# Generated from default/object.tt
package Paws::LakeFormation::DataLakeSettings;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::LakeFormation::Types qw/LakeFormation_DataLakePrincipal LakeFormation_PrincipalPermissions/;
  has CreateDatabaseDefaultPermissions => (is => 'ro', isa => ArrayRef[LakeFormation_PrincipalPermissions]);
  has CreateTableDefaultPermissions => (is => 'ro', isa => ArrayRef[LakeFormation_PrincipalPermissions]);
  has DataLakeAdmins => (is => 'ro', isa => ArrayRef[LakeFormation_DataLakePrincipal]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataLakeAdmins' => {
                                     'class' => 'Paws::LakeFormation::DataLakePrincipal',
                                     'type' => 'ArrayRef[LakeFormation_DataLakePrincipal]'
                                   },
               'CreateDatabaseDefaultPermissions' => {
                                                       'type' => 'ArrayRef[LakeFormation_PrincipalPermissions]',
                                                       'class' => 'Paws::LakeFormation::PrincipalPermissions'
                                                     },
               'CreateTableDefaultPermissions' => {
                                                    'class' => 'Paws::LakeFormation::PrincipalPermissions',
                                                    'type' => 'ArrayRef[LakeFormation_PrincipalPermissions]'
                                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DataLakeSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::DataLakeSettings object:

  $service_obj->Method(Att1 => { CreateDatabaseDefaultPermissions => $value, ..., DataLakeAdmins => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::DataLakeSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDatabaseDefaultPermissions

=head1 DESCRIPTION

The AWS Lake Formation principal.

=head1 ATTRIBUTES


=head2 CreateDatabaseDefaultPermissions => ArrayRef[LakeFormation_PrincipalPermissions]

  A list of up to three principal permissions entries for default create
database permissions.


=head2 CreateTableDefaultPermissions => ArrayRef[LakeFormation_PrincipalPermissions]

  A list of up to three principal permissions entries for default create
table permissions.


=head2 DataLakeAdmins => ArrayRef[LakeFormation_DataLakePrincipal]

  A list of AWS Lake Formation principals.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

