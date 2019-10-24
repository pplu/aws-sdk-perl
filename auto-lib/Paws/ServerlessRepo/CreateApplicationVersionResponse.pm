
package Paws::ServerlessRepo::CreateApplicationVersionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ParameterDefinition/;
  has ApplicationId => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has ParameterDefinitions => (is => 'ro', isa => ArrayRef[ServerlessRepo_ParameterDefinition]);
  has RequiredCapabilities => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ResourcesSupported => (is => 'ro', isa => Bool);
  has SemanticVersion => (is => 'ro', isa => Str);
  has SourceCodeArchiveUrl => (is => 'ro', isa => Str);
  has SourceCodeUrl => (is => 'ro', isa => Str);
  has TemplateUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'SourceCodeUrl' => {
                                    'type' => 'Str'
                                  },
               'ResourcesSupported' => {
                                         'type' => 'Bool'
                                       },
               'ParameterDefinitions' => {
                                           'class' => 'Paws::ServerlessRepo::ParameterDefinition',
                                           'type' => 'ArrayRef[ServerlessRepo_ParameterDefinition]'
                                         },
               'TemplateUrl' => {
                                  'type' => 'Str'
                                },
               'RequiredCapabilities' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    },
               'SourceCodeArchiveUrl' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'SourceCodeUrl' => 'sourceCodeUrl',
                       'ResourcesSupported' => 'resourcesSupported',
                       'ParameterDefinitions' => 'parameterDefinitions',
                       'TemplateUrl' => 'templateUrl',
                       'RequiredCapabilities' => 'requiredCapabilities',
                       'ApplicationId' => 'applicationId',
                       'SemanticVersion' => 'semanticVersion',
                       'SourceCodeArchiveUrl' => 'sourceCodeArchiveUrl'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationVersionResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application Amazon Resource Name (ARN).


=head2 CreationTime => Str

The date and time this resource was created.


=head2 ParameterDefinitions => ArrayRef[ServerlessRepo_ParameterDefinition]

An array of parameter types supported by the application.


=head2 RequiredCapabilities => ArrayRef[Str|Undef]

A list of values that you must specify before you can deploy certain
applications. Some applications might include resources that can affect
permissions in your AWS account, for example, by creating new AWS
Identity and Access Management (IAM) users. For those applications, you
must explicitly acknowledge their capabilities by specifying this
parameter.

The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.

The following resources require you to specify CAPABILITY_IAM or
CAPABILITY_NAMED_IAM: AWS::IAM::Group
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html),
AWS::IAM::InstanceProfile
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html),
AWS::IAM::Policy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html),
and AWS::IAM::Role
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html).
If the application contains IAM resources, you can specify either
CAPABILITY_IAM or CAPABILITY_NAMED_IAM. If the application contains IAM
resources with custom names, you must specify CAPABILITY_NAMED_IAM.

The following resources require you to specify
CAPABILITY_RESOURCE_POLICY: AWS::Lambda::Permission
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html),
AWS::IAM:Policy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html),
AWS::ApplicationAutoScaling::ScalingPolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html),
AWS::S3::BucketPolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html),
AWS::SQS::QueuePolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html),
and AWS::SNS::TopicPolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html).

Applications that contain one or more nested applications require you
to specify CAPABILITY_AUTO_EXPAND.

If your application template contains any of the above resources, we
recommend that you review all permissions associated with the
application before deploying. If you don't specify this parameter for
an application that requires capabilities, the call will fail.


=head2 ResourcesSupported => Bool

Whether all of the AWS resources contained in this application are
supported in the region in which it is being retrieved.


=head2 SemanticVersion => Str

The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 SourceCodeArchiveUrl => Str

A link to the S3 object that contains the ZIP archive of the source
code for this version of your application.

Maximum size 50 MB


=head2 SourceCodeUrl => Str

A link to a public repository for the source code of your application,
for example the URL of a specific GitHub commit.


=head2 TemplateUrl => Str

A link to the packaged AWS SAM template of your application.


=head2 _request_id => Str


=cut

