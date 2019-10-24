# Generated from default/object.tt
package Paws::Greengrass::FunctionConfigurationEnvironment;
  use Moo;
  use Types::Standard qw/Bool ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_ResourceAccessPolicy Greengrass_FunctionExecutionConfig Greengrass___mapOf__string/;
  has AccessSysfs => (is => 'ro', isa => Bool);
  has Execution => (is => 'ro', isa => Greengrass_FunctionExecutionConfig);
  has ResourceAccessPolicies => (is => 'ro', isa => ArrayRef[Greengrass_ResourceAccessPolicy]);
  has Variables => (is => 'ro', isa => Greengrass___mapOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Variables' => {
                                'class' => 'Paws::Greengrass::__mapOf__string',
                                'type' => 'Greengrass___mapOf__string'
                              },
               'ResourceAccessPolicies' => {
                                             'class' => 'Paws::Greengrass::ResourceAccessPolicy',
                                             'type' => 'ArrayRef[Greengrass_ResourceAccessPolicy]'
                                           },
               'Execution' => {
                                'class' => 'Paws::Greengrass::FunctionExecutionConfig',
                                'type' => 'Greengrass_FunctionExecutionConfig'
                              },
               'AccessSysfs' => {
                                  'type' => 'Bool'
                                }
             }
}
;
    return $Params_map;
  }


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


=head2 Execution => Greengrass_FunctionExecutionConfig

  Configuration related to executing the Lambda function


=head2 ResourceAccessPolicies => ArrayRef[Greengrass_ResourceAccessPolicy]

  A list of the resources, with their permissions, to which the Lambda
function will be granted access. A Lambda function can have at most 10
resources. ResourceAccessPolicies apply only when you run the Lambda
function in a Greengrass container.


=head2 Variables => Greengrass___mapOf__string

  Environment variables for the Lambda function's configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

