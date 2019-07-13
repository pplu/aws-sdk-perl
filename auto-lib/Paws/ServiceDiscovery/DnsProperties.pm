package Paws::ServiceDiscovery::DnsProperties;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DnsProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::DnsProperties object:

  $service_obj->Method(Att1 => { HostedZoneId => $value, ..., HostedZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::DnsProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->HostedZoneId

=head1 DESCRIPTION

A complex type that contains the ID for the Route 53 hosted zone that
AWS Cloud Map creates when you create a namespace.

=head1 ATTRIBUTES


=head2 HostedZoneId => Str

  The ID for the Route 53 hosted zone that AWS Cloud Map creates when you
create a namespace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

