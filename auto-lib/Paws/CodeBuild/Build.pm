# Generated from default/object.tt
package Paws::CodeBuild::Build;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_ProjectSource CodeBuild_ExportedEnvironmentVariable CodeBuild_ProjectSourceVersion CodeBuild_VpcConfig CodeBuild_ProjectEnvironment CodeBuild_BuildPhase CodeBuild_LogsLocation CodeBuild_ProjectCache CodeBuild_BuildArtifacts CodeBuild_NetworkInterface/;
  has Arn => (is => 'ro', isa => Str);
  has Artifacts => (is => 'ro', isa => CodeBuild_BuildArtifacts);
  has BuildComplete => (is => 'ro', isa => Bool);
  has BuildNumber => (is => 'ro', isa => Int);
  has BuildStatus => (is => 'ro', isa => Str);
  has Cache => (is => 'ro', isa => CodeBuild_ProjectCache);
  has CurrentPhase => (is => 'ro', isa => Str);
  has EncryptionKey => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has Environment => (is => 'ro', isa => CodeBuild_ProjectEnvironment);
  has ExportedEnvironmentVariables => (is => 'ro', isa => ArrayRef[CodeBuild_ExportedEnvironmentVariable]);
  has Id => (is => 'ro', isa => Str);
  has Initiator => (is => 'ro', isa => Str);
  has Logs => (is => 'ro', isa => CodeBuild_LogsLocation);
  has NetworkInterface => (is => 'ro', isa => CodeBuild_NetworkInterface);
  has Phases => (is => 'ro', isa => ArrayRef[CodeBuild_BuildPhase]);
  has ProjectName => (is => 'ro', isa => Str);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => Int);
  has ResolvedSourceVersion => (is => 'ro', isa => Str);
  has SecondaryArtifacts => (is => 'ro', isa => ArrayRef[CodeBuild_BuildArtifacts]);
  has SecondarySources => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSource]);
  has SecondarySourceVersions => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSourceVersion]);
  has ServiceRole => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => CodeBuild_ProjectSource);
  has SourceVersion => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has TimeoutInMinutes => (is => 'ro', isa => Int);
  has VpcConfig => (is => 'ro', isa => CodeBuild_VpcConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecondarySources' => {
                                       'class' => 'Paws::CodeBuild::ProjectSource',
                                       'type' => 'ArrayRef[CodeBuild_ProjectSource]'
                                     },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'BuildStatus' => {
                                  'type' => 'Str'
                                },
               'SourceVersion' => {
                                    'type' => 'Str'
                                  },
               'Cache' => {
                            'class' => 'Paws::CodeBuild::ProjectCache',
                            'type' => 'CodeBuild_ProjectCache'
                          },
               'SecondaryArtifacts' => {
                                         'type' => 'ArrayRef[CodeBuild_BuildArtifacts]',
                                         'class' => 'Paws::CodeBuild::BuildArtifacts'
                                       },
               'Environment' => {
                                  'class' => 'Paws::CodeBuild::ProjectEnvironment',
                                  'type' => 'CodeBuild_ProjectEnvironment'
                                },
               'ProjectName' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'SecondarySourceVersions' => {
                                              'class' => 'Paws::CodeBuild::ProjectSourceVersion',
                                              'type' => 'ArrayRef[CodeBuild_ProjectSourceVersion]'
                                            },
               'ServiceRole' => {
                                  'type' => 'Str'
                                },
               'BuildComplete' => {
                                    'type' => 'Bool'
                                  },
               'EncryptionKey' => {
                                    'type' => 'Str'
                                  },
               'BuildNumber' => {
                                  'type' => 'Int'
                                },
               'Initiator' => {
                                'type' => 'Str'
                              },
               'ResolvedSourceVersion' => {
                                            'type' => 'Str'
                                          },
               'Artifacts' => {
                                'type' => 'CodeBuild_BuildArtifacts',
                                'class' => 'Paws::CodeBuild::BuildArtifacts'
                              },
               'Source' => {
                             'class' => 'Paws::CodeBuild::ProjectSource',
                             'type' => 'CodeBuild_ProjectSource'
                           },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'ExportedEnvironmentVariables' => {
                                                   'type' => 'ArrayRef[CodeBuild_ExportedEnvironmentVariable]',
                                                   'class' => 'Paws::CodeBuild::ExportedEnvironmentVariable'
                                                 },
               'Id' => {
                         'type' => 'Str'
                       },
               'VpcConfig' => {
                                'type' => 'CodeBuild_VpcConfig',
                                'class' => 'Paws::CodeBuild::VpcConfig'
                              },
               'Logs' => {
                           'class' => 'Paws::CodeBuild::LogsLocation',
                           'type' => 'CodeBuild_LogsLocation'
                         },
               'NetworkInterface' => {
                                       'type' => 'CodeBuild_NetworkInterface',
                                       'class' => 'Paws::CodeBuild::NetworkInterface'
                                     },
               'CurrentPhase' => {
                                   'type' => 'Str'
                                 },
               'Phases' => {
                             'class' => 'Paws::CodeBuild::BuildPhase',
                             'type' => 'ArrayRef[CodeBuild_BuildPhase]'
                           },
               'TimeoutInMinutes' => {
                                       'type' => 'Int'
                                     },
               'QueuedTimeoutInMinutes' => {
                                             'type' => 'Int'
                                           }
             },
  'NameInRequest' => {
                       'NetworkInterface' => 'networkInterface',
                       'VpcConfig' => 'vpcConfig',
                       'Logs' => 'logs',
                       'CurrentPhase' => 'currentPhase',
                       'TimeoutInMinutes' => 'timeoutInMinutes',
                       'Phases' => 'phases',
                       'QueuedTimeoutInMinutes' => 'queuedTimeoutInMinutes',
                       'Source' => 'source',
                       'StartTime' => 'startTime',
                       'ExportedEnvironmentVariables' => 'exportedEnvironmentVariables',
                       'Id' => 'id',
                       'EncryptionKey' => 'encryptionKey',
                       'BuildNumber' => 'buildNumber',
                       'Initiator' => 'initiator',
                       'Artifacts' => 'artifacts',
                       'ResolvedSourceVersion' => 'resolvedSourceVersion',
                       'SecondarySourceVersions' => 'secondarySourceVersions',
                       'ServiceRole' => 'serviceRole',
                       'BuildComplete' => 'buildComplete',
                       'Arn' => 'arn',
                       'Cache' => 'cache',
                       'SecondaryArtifacts' => 'secondaryArtifacts',
                       'Environment' => 'environment',
                       'ProjectName' => 'projectName',
                       'EndTime' => 'endTime',
                       'SecondarySources' => 'secondarySources',
                       'BuildStatus' => 'buildStatus',
                       'SourceVersion' => 'sourceVersion'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Build

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Build object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Build object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a build.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the build.


=head2 Artifacts => CodeBuild_BuildArtifacts

  Information about the output artifacts for the build.


=head2 BuildComplete => Bool

  Whether the build is complete. True if complete; otherwise, false.


=head2 BuildNumber => Int

  The number of the build. For each project, the C<buildNumber> of its
first build is C<1>. The C<buildNumber> of each subsequent build is
incremented by C<1>. If a build is deleted, the C<buildNumber> of other
builds does not change.


=head2 BuildStatus => Str

  The current status of the build. Valid values include:

=over

=item *

C<FAILED>: The build failed.

=item *

C<FAULT>: The build faulted.

=item *

C<IN_PROGRESS>: The build is still in progress.

=item *

C<STOPPED>: The build stopped.

=item *

C<SUCCEEDED>: The build succeeded.

=item *

C<TIMED_OUT>: The build timed out.

=back



=head2 Cache => CodeBuild_ProjectCache

  Information about the cache for the build.


=head2 CurrentPhase => Str

  The current build phase.


=head2 EncryptionKey => Str

  The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).


=head2 EndTime => Str

  When the build process ended, expressed in Unix time format.


=head2 Environment => CodeBuild_ProjectEnvironment

  Information about the build environment for this build.


=head2 ExportedEnvironmentVariables => ArrayRef[CodeBuild_ExportedEnvironmentVariable]

  A list of exported environment variables for this build.


=head2 Id => Str

  The unique ID for the build.


=head2 Initiator => Str

  The entity that started the build. Valid values include:

=over

=item *

If AWS CodePipeline started the build, the pipeline's name (for
example, C<codepipeline/my-demo-pipeline>).

=item *

If an AWS Identity and Access Management (IAM) user started the build,
the user's name (for example, C<MyUserName>).

=item *

If the Jenkins plugin for AWS CodeBuild started the build, the string
C<CodeBuild-Jenkins-Plugin>.

=back



=head2 Logs => CodeBuild_LogsLocation

  Information about the build's logs in Amazon CloudWatch Logs.


=head2 NetworkInterface => CodeBuild_NetworkInterface

  Describes a network interface.


=head2 Phases => ArrayRef[CodeBuild_BuildPhase]

  Information about all previous build phases that are complete and
information about any current build phase that is not yet complete.


=head2 ProjectName => Str

  The name of the AWS CodeBuild project.


=head2 QueuedTimeoutInMinutes => Int

  The number of minutes a build is allowed to be queued before it times
out.


=head2 ResolvedSourceVersion => Str

  An identifier for the version of this build's source code.

=over

=item *

For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the
commit ID.

=item *

For AWS CodePipeline, the source revision provided by AWS CodePipeline.

=item *

For Amazon Simple Storage Service (Amazon S3), this does not apply.

=back



=head2 SecondaryArtifacts => ArrayRef[CodeBuild_BuildArtifacts]

  An array of C<ProjectArtifacts> objects.


=head2 SecondarySources => ArrayRef[CodeBuild_ProjectSource]

  An array of C<ProjectSource> objects.


=head2 SecondarySourceVersions => ArrayRef[CodeBuild_ProjectSourceVersion]

  An array of C<ProjectSourceVersion> objects. Each
C<ProjectSourceVersion> must be one of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example, C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID is used. If not specified,
the default branch's HEAD commit ID is used.

=item *

For Amazon Simple Storage Service (Amazon S3): the version ID of the
object that represents the build input ZIP file to use.

=back



=head2 ServiceRole => Str

  The name of a service role used for this build.


=head2 Source => CodeBuild_ProjectSource

  Information about the source code to be built.


=head2 SourceVersion => Str

  Any version identifier for the version of the source code to be built.
If C<sourceVersion> is specified at the project level, then this
C<sourceVersion> (at the build level) takes precedence.

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<AWS CodeBuild User Guide>.


=head2 StartTime => Str

  When the build process started, expressed in Unix time format.


=head2 TimeoutInMinutes => Int

  How long, in minutes, for AWS CodeBuild to wait before timing out this
build if it does not get marked as completed.


=head2 VpcConfig => CodeBuild_VpcConfig

  If your AWS CodeBuild project accesses resources in an Amazon VPC, you
provide this parameter that identifies the VPC ID and the list of
security group IDs and subnet IDs. The security groups and subnets must
belong to the same VPC. You must provide at least one security group
and one subnet ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

