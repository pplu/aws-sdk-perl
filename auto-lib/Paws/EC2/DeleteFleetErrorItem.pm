package Paws::EC2::DeleteFleetErrorItem;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_DeleteFleetError/;
  has Error => (is => 'ro', isa => EC2_DeleteFleetError);
  has FleetId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Error' => {
                            'class' => 'Paws::EC2::DeleteFleetError',
                            'type' => 'EC2_DeleteFleetError'
                          },
               'FleetId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Error' => 'error',
                       'FleetId' => 'fleetId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteFleetErrorItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DeleteFleetErrorItem object:

  $service_obj->Method(Att1 => { Error => $value, ..., FleetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DeleteFleetErrorItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Error

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Error => EC2_DeleteFleetError

  The error.


=head2 FleetId => Str

  The ID of the EC2 Fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
