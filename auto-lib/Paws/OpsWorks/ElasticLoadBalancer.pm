package Paws::OpsWorks::ElasticLoadBalancer;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DnsName => (is => 'ro', isa => 'Str');
  has Ec2InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ElasticLoadBalancer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::ElasticLoadBalancer object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::ElasticLoadBalancer object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Describes an Elastic Load Balancing instance.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  A list of Availability Zones.


=head2 DnsName => Str

  The instance's public DNS name.


=head2 Ec2InstanceIds => ArrayRef[Str|Undef]

  A list of the EC2 instances that the Elastic Load Balancing instance is
managing traffic for.


=head2 ElasticLoadBalancerName => Str

  The Elastic Load Balancing instance's name.


=head2 LayerId => Str

  The ID of the layer that the instance is attached to.


=head2 Region => Str

  The instance's AWS region.


=head2 StackId => Str

  The ID of the stack that the instance is associated with.


=head2 SubnetIds => ArrayRef[Str|Undef]

  A list of subnet IDs, if the stack is running in a VPC.


=head2 VpcId => Str

  The VPC ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

