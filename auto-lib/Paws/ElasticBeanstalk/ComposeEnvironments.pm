
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

Paws::ElasticBeanstalk::ComposeEnvironments - Arguments for method ComposeEnvironments on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ComposeEnvironments on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method ComposeEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ComposeEnvironments.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $EnvironmentDescriptionsMessage = $elasticbeanstalk->ComposeEnvironments(
      ApplicationName => 'MyApplicationName',    # OPTIONAL
      GroupName       => 'MyGroupName',          # OPTIONAL
      VersionLabels   => [
        'MyVersionLabel', ...                    # min: 1, max: 100
      ],                                         # OPTIONAL
    );

    # Results:
    my $Environments = $EnvironmentDescriptionsMessage->Environments;
    my $NextToken    = $EnvironmentDescriptionsMessage->NextToken;

   # Returns a L<Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/ComposeEnvironments>

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application to which the specified source bundles
belong.



=head2 GroupName => Str

The name of the group to which the target environments belong. Specify
a group name only if the environment name defined in each target
environment's manifest ends with a + (plus) character. See Environment
Manifest (env.yaml)
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html)
for details.



=head2 VersionLabels => ArrayRef[Str|Undef]

A list of version labels, specifying one or more application source
bundles that belong to the target application. Each source bundle must
include an environment manifest that specifies the name of the
environment and the name of the solution stack to use, and optionally
can specify environment links to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ComposeEnvironments in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

