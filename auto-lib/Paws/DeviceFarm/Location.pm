package Paws::DeviceFarm::Location;
  use Moose;
  has Latitude => (is => 'ro', isa => 'Num', request_name => 'latitude', traits => ['NameInRequest'], required => 1);
  has Longitude => (is => 'ro', isa => 'Num', request_name => 'longitude', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Location object:

  $service_obj->Method(Att1 => { Latitude => $value, ..., Longitude => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Latitude

=head1 DESCRIPTION

Represents a latitude and longitude pair, expressed in geographic
coordinate system degrees (for example 47.6204, -122.3491).

Elevation is currently not supported.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Latitude => Num

  The latitude.


=head2 B<REQUIRED> Longitude => Num

  The longitude.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

