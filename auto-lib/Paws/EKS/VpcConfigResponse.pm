package Paws::EKS::VpcConfigResponse;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::VpcConfigResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::VpcConfigResponse object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::VpcConfigResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

An object representing an Amazon EKS cluster VPC configuration
response.

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The security groups associated with the cross-account elastic network
interfaces that are used to allow communication between your worker
nodes and the Kubernetes control plane.


=head2 SubnetIds => ArrayRef[Str|Undef]

  The subnets associated with your cluster.


=head2 VpcId => Str

  The VPC associated with your cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

