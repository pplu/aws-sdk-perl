package Paws::Pinpoint::GPSCoordinates;
  use Moose;
<<<<<<< HEAD
  has Latitude => (is => 'ro', isa => 'Num', required => 1);
  has Longitude => (is => 'ro', isa => 'Num', required => 1);
=======
  has Latitude => (is => 'ro', isa => 'Num');
  has Longitude => (is => 'ro', isa => 'Num');

>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GPSCoordinates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GPSCoordinates object:

  $service_obj->Method(Att1 => { Latitude => $value, ..., Longitude => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GPSCoordinates object:

  $result = $service_obj->Method(...);
  $result->Att1->Latitude

=head1 DESCRIPTION

Specifies the GPS coordinates of a location.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Latitude => Num

  The latitude coordinate of the location.


=head2 B<REQUIRED> Longitude => Num

  The longitude coordinate of the location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

