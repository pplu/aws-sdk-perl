# Generated from default/object.tt
package Paws::ServerlessRepo::Version;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ParameterDefinition/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has ParameterDefinitions => (is => 'ro', isa => ArrayRef[ServerlessRepo_ParameterDefinition], required => 1);
  has RequiredCapabilities => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has ResourcesSupported => (is => 'ro', isa => Bool, required => 1);
  has SemanticVersion => (is => 'ro', isa => Str, required => 1);
  has SourceCodeArchiveUrl => (is => 'ro', isa => Str);
  has SourceCodeUrl => (is => 'ro', isa => Str);
  has TemplateUrl => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ApplicationId' => 'applicationId',
                       'ResourcesSupported' => 'resourcesSupported',
                       'TemplateUrl' => 'templateUrl',
                       'SourceCodeUrl' => 'sourceCodeUrl',
                       'ParameterDefinitions' => 'parameterDefinitions',
                       'SemanticVersion' => 'semanticVersion',
                       'CreationTime' => 'creationTime',
                       'SourceCodeArchiveUrl' => 'sourceCodeArchiveUrl',
                       'RequiredCapabilities' => 'requiredCapabilities'
                     },
  'IsRequired' => {
                    'RequiredCapabilities' => 1,
                    'ParameterDefinitions' => 1,
                    'TemplateUrl' => 1,
                    'CreationTime' => 1,
                    'ResourcesSupported' => 1,
                    'SemanticVersion' => 1,
                    'ApplicationId' => 1
                  },
  'types' => {
               'ResourcesSupported' => {
                                         'type' => 'Bool'
                                       },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'ParameterDefinitions' => {
                                           'type' => 'ArrayRef[ServerlessRepo_ParameterDefinition]',
                                           'class' => 'Paws::ServerlessRepo::ParameterDefinition'
                                         },
               'SourceCodeUrl' => {
                                    'type' => 'Str'
                                  },
               'TemplateUrl' => {
                                  'type' => 'Str'
                                },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'SourceCodeArchiveUrl' => {
                                           'type' => 'Str'
                                         },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    },
               'RequiredCapabilities' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::Version

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::Version object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., TemplateUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::Version object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Application version details.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 B<REQUIRED> CreationTime => Str

  The date and time this resource was created.


=head2 B<REQUIRED> ParameterDefinitions => ArrayRef[ServerlessRepo_ParameterDefinition]

  An array of parameter types supported by the application.


=head2 B<REQUIRED> RequiredCapabilities => ArrayRef[Str|Undef]

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


=head2 B<REQUIRED> ResourcesSupported => Bool

  Whether all of the AWS resources contained in this application are
supported in the region in which it is being retrieved.


=head2 B<REQUIRED> SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 SourceCodeArchiveUrl => Str

  A link to the S3 object that contains the ZIP archive of the source
code for this version of your application.

Maximum size 50 MB


=head2 SourceCodeUrl => Str

  A link to a public repository for the source code of your application,
for example the URL of a specific GitHub commit.


=head2 B<REQUIRED> TemplateUrl => Str

  A link to the packaged AWS SAM template of your application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

