package Paws::CloudWatchEvents::AwsVpcConfiguration;
  use Moose;
  has AssignPublicIp => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::AwsVpcConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::AwsVpcConfiguration object:

  $service_obj->Method(Att1 => { AssignPublicIp => $value, ..., Subnets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::AwsVpcConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignPublicIp

=head1 DESCRIPTION

This structure specifies the VPC subnets and security groups for the
task, and whether a public IP address is to be used. This structure is
relevant only for ECS tasks that use the C<awsvpc> network mode.

=head1 ATTRIBUTES


=head2 AssignPublicIp => Str

  Specifies whether the task's elastic network interface receives a
public IP address. You can specify C<ENABLED> only when C<LaunchType>
in C<EcsParameters> is set to C<FARGATE>.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  Specifies the security groups associated with the task. These security
groups must all be in the same VPC. You can specify as many as five
security groups. If you do not specify a security group, the default
security group for the VPC is used.


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  Specifies the subnets associated with the task. These subnets must all
be in the same VPC. You can specify as many as 16 subnets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

