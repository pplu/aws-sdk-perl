package Paws::ServerlessRepo::CreateCloudFormationChangeSetInput;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'capabilities', traits => ['NameInRequest']);
  has ChangeSetName => (is => 'ro', isa => 'Str', request_name => 'changeSetName', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has NotificationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'notificationArns', traits => ['NameInRequest']);
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ParameterValue]', request_name => 'parameterOverrides', traits => ['NameInRequest']);
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'resourceTypes', traits => ['NameInRequest']);
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::ServerlessRepo::RollbackConfiguration', request_name => 'rollbackConfiguration', traits => ['NameInRequest']);
  has SemanticVersion => (is => 'ro', isa => 'Str', request_name => 'semanticVersion', traits => ['NameInRequest']);
  has StackName => (is => 'ro', isa => 'Str', request_name => 'stackName', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateId => (is => 'ro', isa => 'Str', request_name => 'templateId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateCloudFormationChangeSetInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::CreateCloudFormationChangeSetInput object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., TemplateId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::CreateCloudFormationChangeSetInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

Create an application change set request.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

  A list of values that you must specify before you can deploy certain
applications. Some applications might include resources that can affect
permissions in your AWS account, for example, by creating new AWS
Identity and Access Management (IAM) users. For those applications, you
must explicitly acknowledge their capabilities by specifying this
parameter.

The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM, and
CAPABILITY_RESOURCE_POLICY.

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
and AWS::SNS:TopicPolicy
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html).

If your application template contains any of the above resources, we
recommend that you review all permissions associated with the
application before deploying. If you don't specify this parameter for
an application that requires capabilities, the call will fail.

Valid values: CAPABILITY_IAM | CAPABILITY_NAMED_IAM |
CAPABILITY_RESOURCE_POLICY


=head2 ChangeSetName => Str

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 ClientToken => Str

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 Description => Str

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 NotificationArns => ArrayRef[Str|Undef]

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 ParameterOverrides => ArrayRef[L<Paws::ServerlessRepo::ParameterValue>]

  A list of parameter values for the parameters of the application.


=head2 ResourceTypes => ArrayRef[Str|Undef]

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 RollbackConfiguration => L<Paws::ServerlessRepo::RollbackConfiguration>

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 B<REQUIRED> StackName => Str

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 Tags => ArrayRef[L<Paws::ServerlessRepo::Tag>]

  This property corresponds to the parameter of the same name for the
I<AWS CloudFormation CreateChangeSet
(https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet)>
API.


=head2 TemplateId => Str

  The UUID returned by CreateCloudFormationTemplate.

Pattern:
[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

