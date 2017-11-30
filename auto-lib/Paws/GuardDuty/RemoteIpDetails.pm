package Paws::GuardDuty::RemoteIpDetails;
  use Moose;
  has City => (is => 'ro', isa => 'Paws::GuardDuty::City', request_name => 'city', traits => ['NameInRequest']);
  has Country => (is => 'ro', isa => 'Paws::GuardDuty::Country', request_name => 'country', traits => ['NameInRequest']);
  has GeoLocation => (is => 'ro', isa => 'Paws::GuardDuty::GeoLocation', request_name => 'geoLocation', traits => ['NameInRequest']);
  has IpAddressV4 => (is => 'ro', isa => 'Str', request_name => 'ipAddressV4', traits => ['NameInRequest']);
  has Organization => (is => 'ro', isa => 'Paws::GuardDuty::Organization', request_name => 'organization', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::RemoteIpDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::RemoteIpDetails object:

  $service_obj->Method(Att1 => { City => $value, ..., Organization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::RemoteIpDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->City

=head1 DESCRIPTION

Remote IP information of the connection.

=head1 ATTRIBUTES


=head2 City => L<Paws::GuardDuty::City>

  City information of the remote IP address.


=head2 Country => L<Paws::GuardDuty::Country>

  Country code of the remote IP address.


=head2 GeoLocation => L<Paws::GuardDuty::GeoLocation>

  Location information of the remote IP address.


=head2 IpAddressV4 => Str

  IPV4 remote address of the connection.


=head2 Organization => L<Paws::GuardDuty::Organization>

  ISP Organization information of the remote IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

