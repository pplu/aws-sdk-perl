package Paws::EC2::CreateVolumePermissionModifications;
  use Moo;  use Types::Standard qw/ArrayRef/;
  use Paws::EC2::Types qw/EC2_CreateVolumePermission/;
  has Add => (is => 'ro', isa => ArrayRef[EC2_CreateVolumePermission]);
  has Remove => (is => 'ro', isa => ArrayRef[EC2_CreateVolumePermission]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Remove' => {
                             'class' => 'Paws::EC2::CreateVolumePermission',
                             'type' => 'ArrayRef[EC2_CreateVolumePermission]'
                           },
               'Add' => {
                          'class' => 'Paws::EC2::CreateVolumePermission',
                          'type' => 'ArrayRef[EC2_CreateVolumePermission]'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVolumePermissionModifications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateVolumePermissionModifications object:

  $service_obj->Method(Att1 => { Add => $value, ..., Remove => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateVolumePermissionModifications object:

  $result = $service_obj->Method(...);
  $result->Att1->Add

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Add => ArrayRef[EC2_CreateVolumePermission]

  Adds the specified AWS account ID or group to the list.


=head2 Remove => ArrayRef[EC2_CreateVolumePermission]

  Removes the specified AWS account ID or group from the list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
