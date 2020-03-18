package Paws::Kendra::DataSourceVpcConfiguration;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DataSourceVpcConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DataSourceVpcConfiguration object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DataSourceVpcConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

Provides information for connecting to an Amazon VPC.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

  A list of identifiers of security groups within your Amazon VPC. The
security groups should enable Amazon Kendra to connect to the data
source.


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

  A list of identifiers for subnets within your Amazon VPC. The subnets
should be able to connect to each other in the VPC, and they should
have outgoing access to the Internet through a NAT device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

