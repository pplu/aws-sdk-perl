package Paws::SecurityHub::AwsEc2SecurityGroupIpRange;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2SecurityGroupIpRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2SecurityGroupIpRange object:

  $service_obj->Method(Att1 => { CidrIp => $value, ..., CidrIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2SecurityGroupIpRange object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIp

=head1 DESCRIPTION

A range of IPv4 addresses.

=head1 ATTRIBUTES


=head2 CidrIp => Str

  The IPv4 CIDR range. You can either specify either a CIDR range or a
source security group, but not both. To specify a single IPv4 address,
use the /32 prefix length.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

