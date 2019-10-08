package Paws::EC2::LoadPermissionModifications;
  use Moo;  use Types::Standard qw/ArrayRef/;
  use Paws::EC2::Types qw/EC2_LoadPermissionRequest/;
  has Add => (is => 'ro', isa => ArrayRef[EC2_LoadPermissionRequest]);
  has Remove => (is => 'ro', isa => ArrayRef[EC2_LoadPermissionRequest]);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Remove' => {
                             'class' => 'Paws::EC2::LoadPermissionRequest',
                             'type' => 'ArrayRef[EC2_LoadPermissionRequest]'
                           },
               'Add' => {
                          'class' => 'Paws::EC2::LoadPermissionRequest',
                          'type' => 'ArrayRef[EC2_LoadPermissionRequest]'
                        }
             }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LoadPermissionModifications

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LoadPermissionModifications object:

  $service_obj->Method(Att1 => { Add => $value, ..., Remove => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LoadPermissionModifications object:

  $result = $service_obj->Method(...);
  $result->Att1->Add

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Add => ArrayRef[EC2_LoadPermissionRequest]

  The load permissions to add.


=head2 Remove => ArrayRef[EC2_LoadPermissionRequest]

  The load permissions to remove.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
