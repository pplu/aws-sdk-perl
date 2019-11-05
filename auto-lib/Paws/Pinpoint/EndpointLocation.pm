package Paws::Pinpoint::EndpointLocation;
  use Moose;
  has City => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has Latitude => (is => 'ro', isa => 'Num');
  has Longitude => (is => 'ro', isa => 'Num');
  has PostalCode => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointLocation object:

  $service_obj->Method(Att1 => { City => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->City

=head1 DESCRIPTION

Specifies geographic information about an endpoint.

=head1 ATTRIBUTES


=head2 City => Str

  The name of the city where the endpoint is located.


=head2 Country => Str

  The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region where the endpoint is located. For example, US for the United
States.


=head2 Latitude => Num

  The latitude coordinate of the endpoint location, rounded to one
decimal place.


=head2 Longitude => Num

  The longitude coordinate of the endpoint location, rounded to one
decimal place.


=head2 PostalCode => Str

  The postal or ZIP code for the area where the endpoint is located.


=head2 Region => Str

  The name of the region where the endpoint is located. For locations in
the United States, this value is the name of a state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

