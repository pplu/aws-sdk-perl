
package Paws::CodeDeploy::CreateDeployment;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', traits => ['NameInRequest'], request_name => 'autoRollbackConfiguration' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has FileExistsBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileExistsBehavior' );
  has IgnoreApplicationStopFailures => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'ignoreApplicationStopFailures' );
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', traits => ['NameInRequest'], request_name => 'revision' );
  has TargetInstances => (is => 'ro', isa => 'Paws::CodeDeploy::TargetInstances', traits => ['NameInRequest'], request_name => 'targetInstances' );
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'updateOutdatedInstancesOnly' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeployment - Arguments for method CreateDeployment on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $CreateDeploymentOutput = $codedeploy->CreateDeployment(
      ApplicationName           => 'MyApplicationName',
      AutoRollbackConfiguration => {
        Enabled => 1,    # OPTIONAL
        Events  => [
          'DEPLOYMENT_FAILURE',
          ... # values: DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
        ],    # OPTIONAL
      },    # OPTIONAL
      DeploymentConfigName          => 'MyDeploymentConfigName',    # OPTIONAL
      DeploymentGroupName           => 'MyDeploymentGroupName',     # OPTIONAL
      Description                   => 'MyDescription',             # OPTIONAL
      FileExistsBehavior            => 'DISALLOW',                  # OPTIONAL
      IgnoreApplicationStopFailures => 1,                           # OPTIONAL
      Revision                      => {
        AppSpecContent => {
          Content => 'MyRawStringContent',                          # OPTIONAL
          Sha256  => 'MyRawStringSha256',                           # OPTIONAL
        },    # OPTIONAL
        GitHubLocation => {
          CommitId   => 'MyCommitId',      # OPTIONAL
          Repository => 'MyRepository',    # OPTIONAL
        },    # OPTIONAL
        RevisionType =>
          'S3',    # values: S3, GitHub, String, AppSpecContent; OPTIONAL
        S3Location => {
          Bucket => 'MyS3Bucket',    # OPTIONAL
          BundleType => 'tar',     # values: tar, tgz, zip, YAML, JSON; OPTIONAL
          ETag       => 'MyETag',  # OPTIONAL
          Key        => 'MyS3Key', # OPTIONAL
          Version => 'MyVersionId',    # OPTIONAL
        },    # OPTIONAL
        String => {
          Content => 'MyRawStringContent',    # OPTIONAL
          Sha256  => 'MyRawStringSha256',     # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      TargetInstances => {
        AutoScalingGroups => [ 'MyAutoScalingGroupName', ... ],    # OPTIONAL
        Ec2TagSet => {
          Ec2TagSetList => [
            [
              {
                Key  => 'MyKey',                                   # OPTIONAL
                Type => 'KEY_ONLY'
                ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
                Value => 'MyValue',    # OPTIONAL
              },
              ...
            ],
            ...
          ],                           # OPTIONAL
        },    # OPTIONAL
        TagFilters => [
          {
            Key  => 'MyKey',     # OPTIONAL
            Type => 'KEY_ONLY'
            ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
            Value => 'MyValue',    # OPTIONAL
          },
          ...
        ],
      },    # OPTIONAL
      UpdateOutdatedInstancesOnly => 1,    # OPTIONAL
    );

    # Results:
    my $DeploymentId = $CreateDeploymentOutput->DeploymentId;

    # Returns a L<Paws::CodeDeploy::CreateDeploymentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/CreateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the IAM user
or AWS account.



=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

Configuration information for an automatic rollback that is added when
a deployment is created.



=head2 DeploymentConfigName => Str

The name of a deployment configuration associated with the IAM user or
AWS account.

If not specified, the value configured in the deployment group is used
as the default. If the deployment group does not have a deployment
configuration associated with it, CodeDeployDefault.OneAtATime is used
by default.



=head2 DeploymentGroupName => Str

The name of the deployment group.



=head2 Description => Str

A comment about the deployment.



=head2 FileExistsBehavior => Str

Information about how AWS CodeDeploy handles files that already exist
in a deployment target location but weren't part of the previous
successful deployment.

The fileExistsBehavior parameter takes any of the following values:

=over

=item *

DISALLOW: The deployment fails. This is also the default behavior if no
option is specified.

=item *

OVERWRITE: The version of the file from the application revision
currently being deployed replaces the version already on the instance.

=item *

RETAIN: The version of the file already on the instance is kept and
used as part of the new deployment.

=back


Valid values are: C<"DISALLOW">, C<"OVERWRITE">, C<"RETAIN">

=head2 IgnoreApplicationStopFailures => Bool

If set to true, then if the deployment causes the ApplicationStop
deployment lifecycle event to an instance to fail, the deployment to
that instance is considered to have failed at that point and continues
on to the BeforeInstall deployment lifecycle event.

If set to false or not specified, then if the deployment causes the
ApplicationStop deployment lifecycle event to fail to an instance, the
deployment to that instance stops, and the deployment to that instance
is considered to have failed.



=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

The type and location of the revision to deploy.



=head2 TargetInstances => L<Paws::CodeDeploy::TargetInstances>

Information about the instances that belong to the replacement
environment in a blue/green deployment.



=head2 UpdateOutdatedInstancesOnly => Bool

Indicates whether to deploy to all instances or only to instances that
are not running the latest application revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

