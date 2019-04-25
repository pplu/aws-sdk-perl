package Paws::Greengrass::FunctionConfigurationEnvironment;
  use Moose;
  has AccessSysfs => (is => 'ro', isa => 'Bool');
  has Execution => (is => 'ro', isa => 'Paws::Greengrass::FunctionExecutionConfig');
  has ResourceAccessPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::ResourceAccessPolicy]');
  has Variables => (is => 'ro', isa => 'Paws::Greengrass::__mapOf__string');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::FunctionConfigurationEnvironment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionConfigurationEnvironment object:

  $service_obj->Method(Att1 => { AccessSysfs => $value, ..., Variables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionConfigurationEnvironment object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessSysfs

=head1 DESCRIPTION

The environment configuration of the function.

=head1 ATTRIBUTES


=head2 AccessSysfs => Bool

  If true, the Lambda function is allowed to access the host's /sys
folder. Use this when the Lambda function needs to read device
information from /sys. This setting applies only when you run the
Lambda function in a Greengrass container.


=head2 Execution => L<Paws::Greengrass::FunctionExecutionConfig>

  Configuration related to executing the Lambda function


=head2 ResourceAccessPolicies => ArrayRef[L<Paws::Greengrass::ResourceAccessPolicy>]

  A list of the resources, with their permissions, to which the Lambda
function will be granted access. A Lambda function can have at most 10
resources. ResourceAccessPolicies apply only when you run the Lambda
function in a Greengrass container.


=head2 Variables => L<Paws::Greengrass::__mapOf__string>

  Environment variables for the Lambda function's configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

