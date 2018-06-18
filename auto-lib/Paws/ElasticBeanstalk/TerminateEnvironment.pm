
package Paws::ElasticBeanstalk::TerminateEnvironment;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has ForceTerminate => (is => 'ro', isa => 'Bool');
  has TerminateResources => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::EnvironmentDescription');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::TerminateEnvironment - Arguments for method TerminateEnvironment on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateEnvironment on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method TerminateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateEnvironment.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To terminate an environment
    # The following operation terminates an Elastic Beanstalk environment named
    # my-env:
    my $EnvironmentDescription = $elasticbeanstalk->TerminateEnvironment(
      {
        'EnvironmentName' => 'my-env'
      }
    );

    # Results:
    my $AbortableOperationInProgress =
      $EnvironmentDescription->AbortableOperationInProgress;
    my $ApplicationName   = $EnvironmentDescription->ApplicationName;
    my $CNAME             = $EnvironmentDescription->CNAME;
    my $DateCreated       = $EnvironmentDescription->DateCreated;
    my $DateUpdated       = $EnvironmentDescription->DateUpdated;
    my $EndpointURL       = $EnvironmentDescription->EndpointURL;
    my $EnvironmentId     = $EnvironmentDescription->EnvironmentId;
    my $EnvironmentName   = $EnvironmentDescription->EnvironmentName;
    my $Health            = $EnvironmentDescription->Health;
    my $SolutionStackName = $EnvironmentDescription->SolutionStackName;
    my $Status            = $EnvironmentDescription->Status;
    my $Tier              = $EnvironmentDescription->Tier;

    # Returns a L<Paws::ElasticBeanstalk::EnvironmentDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/TerminateEnvironment>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The ID of the environment to terminate.

Condition: You must specify either this or an EnvironmentName, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 EnvironmentName => Str

The name of the environment to terminate.

Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 ForceTerminate => Bool

Terminates the target environment even if another environment in the
same group is dependent on it.



=head2 TerminateResources => Bool

Indicates whether the associated AWS resources should shut down when
the environment is terminated:

=over

=item *

C<true>: The specified environment as well as the associated AWS
resources, such as Auto Scaling group and LoadBalancer, are terminated.

=item *

C<false>: AWS Elastic Beanstalk resource management is removed from the
environment, but the AWS resources continue to operate.

=back

For more information, see the AWS Elastic Beanstalk User Guide.
(http://docs.aws.amazon.com/elasticbeanstalk/latest/ug/)

Default: C<true>

Valid Values: C<true> | C<false>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateEnvironment in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

