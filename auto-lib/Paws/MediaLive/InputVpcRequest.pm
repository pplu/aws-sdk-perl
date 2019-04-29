package Paws::MediaLive::InputVpcRequest;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputVpcRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputVpcRequest object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputVpcRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

Settings for a private VPC Input. When this property is specified, the
input destination addresses will be created in a VPC rather than with
public Internet addresses. This property requires setting the roleArn
property on Input creation. Not compatible with the inputSecurityGroups
property.

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  A list of up to 5 EC2 VPC security group IDs to attach to the Input VPC
network interfaces. Requires subnetIds. If none are specified then the
VPC default security group will be used.


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

  A list of 2 VPC subnet IDs from the same VPC. Subnet IDs must be mapped
to two unique availability zones (AZ).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

