package Paws::ServiceDiscovery::DnsConfigChange;
  use Moose;
  has DnsRecords => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::DnsRecord]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DnsConfigChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::DnsConfigChange object:

  $service_obj->Method(Att1 => { DnsRecords => $value, ..., DnsRecords => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::DnsConfigChange object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsRecords

=head1 DESCRIPTION

A complex type that contains information about changes to the Route 53
DNS records that AWS Cloud Map creates when you register an instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DnsRecords => ArrayRef[L<Paws::ServiceDiscovery::DnsRecord>]

  An array that contains one C<DnsRecord> object for each Route 53 record
that you want AWS Cloud Map to create when you register an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

