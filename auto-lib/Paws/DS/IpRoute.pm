package Paws::DS::IpRoute;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::IpRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::IpRoute object:

  $service_obj->Method(Att1 => { CidrIp => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::IpRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIp

=head1 DESCRIPTION

IP address block. This is often the address block of the DNS server
used for your on-premises domain.

=head1 ATTRIBUTES


=head2 CidrIp => Str

  IP address block using CIDR format, for example 10.0.0.0/24. This is
often the address block of the DNS server used for your on-premises
domain. For a single IP address use a CIDR address block with /32. For
example 10.0.0.0/32.


=head2 Description => Str

  Description of the address block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

