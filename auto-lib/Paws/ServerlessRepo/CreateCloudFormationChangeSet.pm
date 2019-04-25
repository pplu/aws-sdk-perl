
package Paws::ServerlessRepo::CreateCloudFormationChangeSet;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities');
  has ChangeSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changeSetName');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has NotificationArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'notificationArns');
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ParameterValue]', traits => ['NameInRequest'], request_name => 'parameterOverrides');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceTypes');
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::ServerlessRepo::RollbackConfiguration', traits => ['NameInRequest'], request_name => 'rollbackConfiguration');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion');
  has StackName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFormationChangeSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/changesets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateCloudFormationChangeSet - Arguments for method CreateCloudFormationChangeSet on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCloudFormationChangeSet on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method CreateCloudFormationChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCloudFormationChangeSet.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $CreateCloudFormationChangeSetResponse =
      $serverlessrepo->CreateCloudFormationChangeSet(
      ApplicationId      => 'My__string',
      StackName          => 'My__string',
      Capabilities       => [ 'My__string', ... ],    # OPTIONAL
      ChangeSetName      => 'My__string',             # OPTIONAL
      ClientToken        => 'My__string',             # OPTIONAL
      Description        => 'My__string',             # OPTIONAL
      NotificationArns   => [ 'My__string', ... ],    # OPTIONAL
      ParameterOverrides => [
        {
          Name  => 'My__string',
          Value => 'My__string',

        },
        ...
      ],                                              # OPTIONAL
      ResourceTypes => [ 'My__string', ... ],         # OPTIONAL
      RollbackConfiguration => {
        MonitoringTimeInMinutes => 1,                 # OPTIONAL
        RollbackTriggers        => [
          {
            Arn  => 'My__string',
            Type => 'My__string',

          },
          ...
        ],                                            # OPTIONAL
      },    # OPTIONAL
      SemanticVersion => 'My__string',    # OPTIONAL
      Tags            => [
        {
          Key   => 'My__string',
          Value => 'My__string',

        },
        ...
      ],                                  # OPTIONAL
      TemplateId => 'My__string',         # OPTIONAL
      );

    # Results:
    my $ApplicationId = $CreateCloudFormationChangeSetResponse->ApplicationId;
    my $ChangeSetId   = $CreateCloudFormationChangeSetResponse->ChangeSetId;
    my $SemanticVersion =
      $CreateCloudFormationChangeSetResponse->SemanticVersion;
    my $StackId = $CreateCloudFormationChangeSetResponse->StackId;

# Returns a L<Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/CreateCloudFormationChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



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

This class forms part of L<Paws>, documenting arguments for method CreateCloudFormationChangeSet in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

