# Generated from json/callargs_class.tt

package Paws::CodeDeploy::CreateDeployment;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_AutoRollbackConfiguration CodeDeploy_RevisionLocation CodeDeploy_TargetInstances/;
  has ApplicationName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => CodeDeploy_AutoRollbackConfiguration, predicate => 1);
  has DeploymentConfigName => (is => 'ro', isa => Str, predicate => 1);
  has DeploymentGroupName => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has FileExistsBehavior => (is => 'ro', isa => Str, predicate => 1);
  has IgnoreApplicationStopFailures => (is => 'ro', isa => Bool, predicate => 1);
  has Revision => (is => 'ro', isa => CodeDeploy_RevisionLocation, predicate => 1);
  has TargetInstances => (is => 'ro', isa => CodeDeploy_TargetInstances, predicate => 1);
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Revision' => {
                               'class' => 'Paws::CodeDeploy::RevisionLocation',
                               'type' => 'CodeDeploy_RevisionLocation'
                             },
               'UpdateOutdatedInstancesOnly' => {
                                                  'type' => 'Bool'
                                                },
               'IgnoreApplicationStopFailures' => {
                                                    'type' => 'Bool'
                                                  },
               'TargetInstances' => {
                                      'class' => 'Paws::CodeDeploy::TargetInstances',
                                      'type' => 'CodeDeploy_TargetInstances'
                                    },
               'FileExistsBehavior' => {
                                         'type' => 'Str'
                                       },
               'DeploymentConfigName' => {
                                           'type' => 'Str'
                                         },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'AutoRollbackConfiguration' => {
                                                'class' => 'Paws::CodeDeploy::AutoRollbackConfiguration',
                                                'type' => 'CodeDeploy_AutoRollbackConfiguration'
                                              },
               'DeploymentGroupName' => {
                                          'type' => 'Str'
                                        },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Revision' => 'revision',
                       'UpdateOutdatedInstancesOnly' => 'updateOutdatedInstancesOnly',
                       'IgnoreApplicationStopFailures' => 'ignoreApplicationStopFailures',
                       'TargetInstances' => 'targetInstances',
                       'FileExistsBehavior' => 'fileExistsBehavior',
                       'DeploymentConfigName' => 'deploymentConfigName',
                       'ApplicationName' => 'applicationName',
                       'AutoRollbackConfiguration' => 'autoRollbackConfiguration',
                       'DeploymentGroupName' => 'deploymentGroupName',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'ApplicationName' => 1
                  }
}
;
    return $Params_map;
  }

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
            ...                        # OPTIONAL
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
        ],                         # OPTIONAL
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



=head2 AutoRollbackConfiguration => CodeDeploy_AutoRollbackConfiguration

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

If true, then if an ApplicationStop, BeforeBlockTraffic, or
AfterBlockTraffic deployment lifecycle event to an instance fails, then
the deployment continues to the next deployment lifecycle event. For
example, if ApplicationStop fails, the deployment continues with
DownloadBundle. If BeforeBlockTraffic fails, the deployment continues
with BlockTraffic. If AfterBlockTraffic fails, the deployment continues
with ApplicationStop.

If false or not specified, then if a lifecycle event fails during a
deployment to an instance, that deployment fails. If deployment to that
instance is part of an overall deployment and the number of healthy
hosts is not less than the minimum number of healthy hosts, then a
deployment to the next instance is attempted.

During a deployment, the AWS CodeDeploy agent runs the scripts
specified for ApplicationStop, BeforeBlockTraffic, and
AfterBlockTraffic in the AppSpec file from the previous successful
deployment. (All other scripts are run from the AppSpec file in the
current deployment.) If one of these scripts contains an error and does
not run successfully, the deployment can fail.

If the cause of the failure is a script from the last successful
deployment that will never run successfully, create a new deployment
and use C<ignoreApplicationStopFailures> to specify that the
ApplicationStop, BeforeBlockTraffic, and AfterBlockTraffic failures
should be ignored.



=head2 Revision => CodeDeploy_RevisionLocation

The type and location of the revision to deploy.



=head2 TargetInstances => CodeDeploy_TargetInstances

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

