# Generated from default/object.tt
package Paws::GuardDuty::RemoteIpDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_GeoLocation GuardDuty_City GuardDuty_Country GuardDuty_Organization/;
  has City => (is => 'ro', isa => GuardDuty_City);
  has Country => (is => 'ro', isa => GuardDuty_Country);
  has GeoLocation => (is => 'ro', isa => GuardDuty_GeoLocation);
  has IpAddressV4 => (is => 'ro', isa => Str);
  has Organization => (is => 'ro', isa => GuardDuty_Organization);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'IpAddressV4' => 'ipAddressV4',
                       'GeoLocation' => 'geoLocation',
                       'City' => 'city',
                       'Country' => 'country',
                       'Organization' => 'organization'
                     },
  'types' => {
               'Country' => {
                              'type' => 'GuardDuty_Country',
                              'class' => 'Paws::GuardDuty::Country'
                            },
               'Organization' => {
                                   'type' => 'GuardDuty_Organization',
                                   'class' => 'Paws::GuardDuty::Organization'
                                 },
               'City' => {
                           'type' => 'GuardDuty_City',
                           'class' => 'Paws::GuardDuty::City'
                         },
               'GeoLocation' => {
                                  'class' => 'Paws::GuardDuty::GeoLocation',
                                  'type' => 'GuardDuty_GeoLocation'
                                },
               'IpAddressV4' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


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

Continas information about the remote IP address of the connection.

=head1 ATTRIBUTES


=head2 City => GuardDuty_City

  City information of the remote IP address.


=head2 Country => GuardDuty_Country

  Country code of the remote IP address.


=head2 GeoLocation => GuardDuty_GeoLocation

  Location information of the remote IP address.


=head2 IpAddressV4 => Str

  IPV4 remote address of the connection.


=head2 Organization => GuardDuty_Organization

  ISP Organization information of the remote IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

