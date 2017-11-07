package Paws::GameLift::EC2InstanceLimit;
  use Moose;
  has CurrentInstances => (is => 'ro', isa => 'Int');
  has EC2InstanceType => (is => 'ro', isa => 'Str');
  has InstanceLimit => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::EC2InstanceLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::EC2InstanceLimit object:

  $service_obj->Method(Att1 => { CurrentInstances => $value, ..., InstanceLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::EC2InstanceLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentInstances

=head1 DESCRIPTION

Maximum number of instances allowed based on the Amazon Elastic Compute
Cloud (Amazon EC2) instance type. Instance limits can be retrieved by
calling DescribeEC2InstanceLimits.

=head1 ATTRIBUTES


=head2 CurrentInstances => Int

  Number of instances of the specified type that are currently in use by
this AWS account.


=head2 EC2InstanceType => Str

  Name of an EC2 instance type that is supported in Amazon GameLift. A
fleet instance type determines the computing resources of each instance
in the fleet, including CPU, memory, storage, and networking capacity.
Amazon GameLift supports the following EC2 instance types. See Amazon
EC2 Instance Types (http://aws.amazon.com/ec2/instance-types/) for
detailed descriptions.


=head2 InstanceLimit => Int

  Number of instances allowed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

