
package Paws::ElasticBeanstalk::ComposeEnvironments;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ComposeEnvironments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ComposeEnvironmentsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ComposeEnvironments - Arguments for method ComposeEnvironments on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method ComposeEnvironments on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method ComposeEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ComposeEnvironments.

As an example:

  $service_obj->ComposeEnvironments(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application to which the specified source bundles
belong.



=head2 GroupName => Str

The name of the group to which the target environments belong. Specify
a group name only if the environment name defined in each target
environment's manifest ends with a + (plus) character. See Environment
Manifest (env.yaml) for details.



=head2 VersionLabels => ArrayRef[Str|Undef]

A list of version labels, specifying one or more application source
bundles that belong to the target application. Each source bundle must
include an environment manifest that specifies the name of the
environment and the name of the solution stack to use, and optionally
can specify environment links to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ComposeEnvironments in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

