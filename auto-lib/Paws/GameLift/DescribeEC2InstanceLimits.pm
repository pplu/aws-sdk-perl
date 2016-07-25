
package Paws::GameLift::DescribeEC2InstanceLimits;
  use Moose;
  has EC2InstanceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEC2InstanceLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeEC2InstanceLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeEC2InstanceLimits - Arguments for method DescribeEC2InstanceLimits on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEC2InstanceLimits on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method DescribeEC2InstanceLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEC2InstanceLimits.

As an example:

  $service_obj->DescribeEC2InstanceLimits(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EC2InstanceType => Str

Name of an EC2 instance type that is supported in Amazon GameLift. A
fleet instance type determines the computing resources of each instance
in the fleet, including CPU, memory, storage, and networking capacity.
GameLift supports the following EC2 instance types. See Amazon EC2
Instance Types for detailed descriptions. Leave this parameter blank to
retrieve limits for all types.

Valid values are: C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEC2InstanceLimits in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

