# Generated from default/object.tt
package Paws::CodeBuild::Project;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_LogsConfig CodeBuild_ProjectEnvironment CodeBuild_ProjectSource CodeBuild_ProjectSourceVersion CodeBuild_ProjectCache CodeBuild_Webhook CodeBuild_VpcConfig CodeBuild_ProjectBadge CodeBuild_ProjectArtifacts CodeBuild_Tag/;
  has Arn => (is => 'ro', isa => Str);
  has Artifacts => (is => 'ro', isa => CodeBuild_ProjectArtifacts);
  has Badge => (is => 'ro', isa => CodeBuild_ProjectBadge);
  has Cache => (is => 'ro', isa => CodeBuild_ProjectCache);
  has Created => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EncryptionKey => (is => 'ro', isa => Str);
  has Environment => (is => 'ro', isa => CodeBuild_ProjectEnvironment);
  has LastModified => (is => 'ro', isa => Str);
  has LogsConfig => (is => 'ro', isa => CodeBuild_LogsConfig);
  has Name => (is => 'ro', isa => Str);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => Int);
  has SecondaryArtifacts => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectArtifacts]);
  has SecondarySources => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSource]);
  has SecondarySourceVersions => (is => 'ro', isa => ArrayRef[CodeBuild_ProjectSourceVersion]);
  has ServiceRole => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => CodeBuild_ProjectSource);
  has SourceVersion => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[CodeBuild_Tag]);
  has TimeoutInMinutes => (is => 'ro', isa => Int);
  has VpcConfig => (is => 'ro', isa => CodeBuild_VpcConfig);
  has Webhook => (is => 'ro', isa => CodeBuild_Webhook);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceVersion' => {
                                    'type' => 'Str'
                                  },
               'QueuedTimeoutInMinutes' => {
                                             'type' => 'Int'
                                           },
               'SecondaryArtifacts' => {
                                         'class' => 'Paws::CodeBuild::ProjectArtifacts',
                                         'type' => 'ArrayRef[CodeBuild_ProjectArtifacts]'
                                       },
               'Cache' => {
                            'class' => 'Paws::CodeBuild::ProjectCache',
                            'type' => 'CodeBuild_ProjectCache'
                          },
               'Badge' => {
                            'class' => 'Paws::CodeBuild::ProjectBadge',
                            'type' => 'CodeBuild_ProjectBadge'
                          },
               'LogsConfig' => {
                                 'class' => 'Paws::CodeBuild::LogsConfig',
                                 'type' => 'CodeBuild_LogsConfig'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Source' => {
                             'class' => 'Paws::CodeBuild::ProjectSource',
                             'type' => 'CodeBuild_ProjectSource'
                           },
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               'Artifacts' => {
                                'class' => 'Paws::CodeBuild::ProjectArtifacts',
                                'type' => 'CodeBuild_ProjectArtifacts'
                              },
               'Environment' => {
                                  'class' => 'Paws::CodeBuild::ProjectEnvironment',
                                  'type' => 'CodeBuild_ProjectEnvironment'
                                },
               'TimeoutInMinutes' => {
                                       'type' => 'Int'
                                     },
               'SecondarySourceVersions' => {
                                              'class' => 'Paws::CodeBuild::ProjectSourceVersion',
                                              'type' => 'ArrayRef[CodeBuild_ProjectSourceVersion]'
                                            },
               'ServiceRole' => {
                                  'type' => 'Str'
                                },
               'Webhook' => {
                              'class' => 'Paws::CodeBuild::Webhook',
                              'type' => 'CodeBuild_Webhook'
                            },
               'VpcConfig' => {
                                'class' => 'Paws::CodeBuild::VpcConfig',
                                'type' => 'CodeBuild_VpcConfig'
                              },
               'EncryptionKey' => {
                                    'type' => 'Str'
                                  },
               'Created' => {
                              'type' => 'Str'
                            },
               'Tags' => {
                           'class' => 'Paws::CodeBuild::Tag',
                           'type' => 'ArrayRef[CodeBuild_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'SecondarySources' => {
                                       'class' => 'Paws::CodeBuild::ProjectSource',
                                       'type' => 'ArrayRef[CodeBuild_ProjectSource]'
                                     }
             },
  'NameInRequest' => {
                       'SourceVersion' => 'sourceVersion',
                       'QueuedTimeoutInMinutes' => 'queuedTimeoutInMinutes',
                       'SecondaryArtifacts' => 'secondaryArtifacts',
                       'Cache' => 'cache',
                       'Badge' => 'badge',
                       'LogsConfig' => 'logsConfig',
                       'Arn' => 'arn',
                       'Source' => 'source',
                       'LastModified' => 'lastModified',
                       'Artifacts' => 'artifacts',
                       'Environment' => 'environment',
                       'TimeoutInMinutes' => 'timeoutInMinutes',
                       'SecondarySourceVersions' => 'secondarySourceVersions',
                       'ServiceRole' => 'serviceRole',
                       'Webhook' => 'webhook',
                       'VpcConfig' => 'vpcConfig',
                       'EncryptionKey' => 'encryptionKey',
                       'Created' => 'created',
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'Name' => 'name',
                       'SecondarySources' => 'secondarySources'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Project

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Project object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Webhook => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Project object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a build project.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the build project.


=head2 Artifacts => CodeBuild_ProjectArtifacts

  Information about the build output artifacts for the build project.


=head2 Badge => CodeBuild_ProjectBadge

  Information about the build badge for the build project.


=head2 Cache => CodeBuild_ProjectCache

  Information about the cache for the build project.


=head2 Created => Str

  When the build project was created, expressed in Unix time format.


=head2 Description => Str

  A description that makes the build project easy to identify.


=head2 EncryptionKey => Str

  The AWS Key Management Service (AWS KMS) customer master key (CMK) to
be used for encrypting the build output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).


=head2 Environment => CodeBuild_ProjectEnvironment

  Information about the build environment for this build project.


=head2 LastModified => Str

  When the build project's settings were last modified, expressed in Unix
time format.


=head2 LogsConfig => CodeBuild_LogsConfig

  Information about logs for the build project. A project can create logs
in Amazon CloudWatch Logs, an S3 bucket, or both.


=head2 Name => Str

  The name of the build project.


=head2 QueuedTimeoutInMinutes => Int

  The number of minutes a build is allowed to be queued before it times
out.


=head2 SecondaryArtifacts => ArrayRef[CodeBuild_ProjectArtifacts]

  An array of C<ProjectArtifacts> objects.


=head2 SecondarySources => ArrayRef[CodeBuild_ProjectSource]

  An array of C<ProjectSource> objects.


=head2 SecondarySourceVersions => ArrayRef[CodeBuild_ProjectSourceVersion]

  An array of C<ProjectSourceVersion> objects. If
C<secondarySourceVersions> is specified at the build level, then they
take over these C<secondarySourceVersions> (at the project level).


=head2 ServiceRole => Str

  The ARN of the AWS Identity and Access Management (IAM) role that
enables AWS CodeBuild to interact with dependent AWS services on behalf
of the AWS account.


=head2 Source => CodeBuild_ProjectSource

  Information about the build input source code for this build project.


=head2 SourceVersion => Str

  A version of the build input to be built for this project. If not
specified, the latest version is used. If specified, it must be one of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
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

If C<sourceVersion> is specified at the build level, then that version
takes precedence over this C<sourceVersion> (at the project level).

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<AWS CodeBuild User Guide>.


=head2 Tags => ArrayRef[CodeBuild_Tag]

  The tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.


=head2 TimeoutInMinutes => Int

  How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
wait before timing out any related build that did not get marked as
completed. The default is 60 minutes.


=head2 VpcConfig => CodeBuild_VpcConfig

  Information about the VPC configuration that AWS CodeBuild accesses.


=head2 Webhook => CodeBuild_Webhook

  Information about a webhook that connects repository events to a build
project in AWS CodeBuild.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

