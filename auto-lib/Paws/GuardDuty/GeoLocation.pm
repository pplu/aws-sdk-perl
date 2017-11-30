package Paws::GuardDuty::GeoLocation;
  use Moose;
  has Lat => (is => 'ro', isa => 'Num', request_name => 'lat', traits => ['NameInRequest']);
  has Lon => (is => 'ro', isa => 'Num', request_name => 'lon', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GeoLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::GeoLocation object:

  $service_obj->Method(Att1 => { Lat => $value, ..., Lon => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::GeoLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Lat

=head1 DESCRIPTION

Location information of the remote IP address.

=head1 ATTRIBUTES


=head2 Lat => Num

  Latitude information of remote IP address.


=head2 Lon => Num

  Longitude information of remote IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

