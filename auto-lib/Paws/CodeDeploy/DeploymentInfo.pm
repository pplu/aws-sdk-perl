package Paws::CodeDeploy::DeploymentInfo;
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str');
  has completeTime => (is => 'ro', isa => 'Str');
  has createTime => (is => 'ro', isa => 'Str');
  has creator => (is => 'ro', isa => 'Str');
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has deploymentGroupName => (is => 'ro', isa => 'Str');
  has deploymentId => (is => 'ro', isa => 'Str');
  has deploymentOverview => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentOverview');
  has description => (is => 'ro', isa => 'Str');
  has errorInformation => (is => 'ro', isa => 'Paws::CodeDeploy::ErrorInformation');
  has ignoreApplicationStopFailures => (is => 'ro', isa => 'Bool');
  has revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation');
  has startTime => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentInfo object:

  $service_obj->Method(Att1 => { applicationName => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->applicationName

=head1 DESCRIPTION

Information about a deployment.

=head1 ATTRIBUTES

=head2 applicationName => Str

  The application name.

=head2 completeTime => Str

  A timestamp indicating when the deployment was completed.

=head2 createTime => Str

  A timestamp indicating when the deployment was created.

=head2 creator => Str

  How the deployment was created:

=over

=item * user: A user created the deployment.

=item * autoscaling: Auto Scaling created the deployment.

=back


=head2 deploymentConfigName => Str

  The deployment configuration name.

=head2 deploymentGroupName => Str

  The deployment group name.

=head2 deploymentId => Str

  The deployment ID.

=head2 deploymentOverview => L<Paws::CodeDeploy::DeploymentOverview>

  A summary of the deployment status of the instances in the deployment.

=head2 description => Str

  A comment about the deployment.

=head2 errorInformation => L<Paws::CodeDeploy::ErrorInformation>

  Information about any error associated with this deployment.

=head2 ignoreApplicationStopFailures => Bool

  If true, then if the deployment causes the ApplicationStop deployment
lifecycle event to fail to a specific instance, the deployment will not
be considered to have failed to that instance at that point and will
continue on to the BeforeInstall deployment lifecycle event.

If false or not specified, then if the deployment causes the
ApplicationStop deployment lifecycle event to fail to a specific
instance, the deployment will stop to that instance, and the deployment
to that instance will be considered to have failed.

=head2 revision => L<Paws::CodeDeploy::RevisionLocation>

  Information about the location of application artifacts that are stored
and the service to retrieve them from.

=head2 startTime => Str

  A timestamp indicating when the deployment began deploying to the
deployment group.

Note that in some cases, the reported value of the start time may be
later than the complete time. This is due to differences in the clock
settings of various back-end servers that participate in the overall
deployment process.

=head2 status => Str

  The current state of the deployment as a whole.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

