package Paws::Config;
  use Moose;
  sub service { 'config' }
  sub version { '2014-11-12' }
  sub target_prefix { 'StarlingDoveService' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub DeleteConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliveryChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeleteDeliveryChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeliverConfigSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DeliverConfigSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComplianceByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeComplianceByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComplianceByResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeComplianceByResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigRuleEvaluationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigRuleEvaluationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRecorders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigurationRecorders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRecorderStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeConfigurationRecorderStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeDeliveryChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryChannelStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::DescribeDeliveryChannelStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetailsByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceDetailsByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetailsByResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceDetailsByResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceSummaryByConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceSummaryByConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceSummaryByResourceType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetComplianceSummaryByResourceType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceConfigHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::GetResourceConfigHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDiscoveredResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::ListDiscoveredResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutConfigRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDeliveryChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutDeliveryChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEvaluations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::PutEvaluations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StartConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopConfigurationRecorder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Config::StopConfigurationRecorder', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/DeleteConfigRule DeleteDeliveryChannel DeliverConfigSnapshot DescribeComplianceByConfigRule DescribeComplianceByResource DescribeConfigRuleEvaluationStatus DescribeConfigRules DescribeConfigurationRecorders DescribeConfigurationRecorderStatus DescribeDeliveryChannels DescribeDeliveryChannelStatus GetComplianceDetailsByConfigRule GetComplianceDetailsByResource GetComplianceSummaryByConfigRule GetComplianceSummaryByResourceType GetResourceConfigHistory ListDiscoveredResources PutConfigRule PutConfigurationRecorder PutDeliveryChannel PutEvaluations StartConfigurationRecorder StopConfigurationRecorder / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config - Perl Interface to AWS AWS Config

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Config');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



AWS Config

AWS Config provides a way to keep track of the configurations of all
the AWS resources associated with your AWS account. You can use AWS
Config to get the current and historical configurations of each AWS
resource and also to get information about the relationship between the
resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2)
instance, an Elastic Block Store (EBS) volume, an Elastic network
Interface (ENI), or a security group. For a complete list of resources
currently supported by AWS Config, see Supported AWS Resources.

You can access and manage AWS Config through the AWS Management
Console, the AWS Command Line Interface (AWS CLI), the AWS Config API,
or the AWS SDKs for AWS Config

This reference guide contains documentation for the AWS Config API and
the AWS CLI commands that you can use to manage AWS Config.

The AWS Config API uses the Signature Version 4 protocol for signing
requests. For more information about how to sign a request with this
protocol, see Signature Version 4 Signing Process.

For detailed information about AWS Config features and their associated
actions or commands, as well as how to work with AWS Management
Console, see What Is AWS Config? in the I<AWS Config Developer Guide>.










=head1 METHODS

=head2 DeleteConfigRule(ConfigRuleName => Str)

Each argument is described in detail in: L<Paws::Config::DeleteConfigRule>

Returns: nothing

  

Deletes the specified AWS Config rule and all of its evaluation
results.

AWS Config sets the state of a rule to C<DELETING> until the deletion
is complete. You cannot update a rule while it is in this state. If you
make a C<PutConfigRule> request for the rule, you will receive a
C<ResourceInUseException>.

You can check the state of a rule by using the C<DescribeConfigRules>
request.











=head2 DeleteDeliveryChannel(DeliveryChannelName => Str)

Each argument is described in detail in: L<Paws::Config::DeleteDeliveryChannel>

Returns: nothing

  

Deletes the specified delivery channel.

The delivery channel cannot be deleted if it is the only delivery
channel and the configuration recorder is still running. To delete the
delivery channel, stop the running configuration recorder using the
StopConfigurationRecorder action.











=head2 DeliverConfigSnapshot(deliveryChannelName => Str)

Each argument is described in detail in: L<Paws::Config::DeliverConfigSnapshot>

Returns: a L<Paws::Config::DeliverConfigSnapshotResponse> instance

  

Schedules delivery of a configuration snapshot to the Amazon S3 bucket
in the specified delivery channel. After the delivery has started, AWS
Config sends following notifications using an Amazon SNS topic that you
have specified.

=over

=item * Notification of starting the delivery.

=item * Notification of delivery completed, if the delivery was
successfully completed.

=item * Notification of delivery failure, if the delivery failed to
complete.

=back











=head2 DescribeComplianceByConfigRule([ComplianceTypes => ArrayRef[Str], ConfigRuleNames => ArrayRef[Str], NextToken => Str])

Each argument is described in detail in: L<Paws::Config::DescribeComplianceByConfigRule>

Returns: a L<Paws::Config::DescribeComplianceByConfigRuleResponse> instance

  

Indicates whether the specified AWS Config rules are compliant. If a
rule is noncompliant, this action returns the number of AWS resources
that do not comply with the rule.

A rule is compliant if all of the evaluated resources comply with it,
and it is noncompliant if any of these resources do not comply.

If AWS Config has no current evaluation results for the rule, it
returns C<InsufficientData>. This result might indicate one of the
following conditions:

=over

=item * AWS Config has never invoked an evaluation for the rule. To
check whether it has, use the C<DescribeConfigRuleEvaluationStatus>
action to get the C<LastSuccessfulInvocationTime> and
C<LastFailedInvocationTime>.

=item * The rule's AWS Lambda function is failing to send evaluation
results to AWS Config. Verify that the role that you assigned to your
configuration recorder includes the C<config:PutEvaluations>
permission. If the rule is a customer managed rule, verify that the AWS
Lambda execution role includes the C<config:PutEvaluations> permission.

=item * The rule's AWS Lambda function has returned C<NOT_APPLICABLE>
for all evaluation results. This can occur if the resources were
deleted or removed from the rule's scope.

=back











=head2 DescribeComplianceByResource([ComplianceTypes => ArrayRef[Str], Limit => Int, NextToken => Str, ResourceId => Str, ResourceType => Str])

Each argument is described in detail in: L<Paws::Config::DescribeComplianceByResource>

Returns: a L<Paws::Config::DescribeComplianceByResourceResponse> instance

  

Indicates whether the specified AWS resources are compliant. If a
resource is noncompliant, this action returns the number of AWS Config
rules that the resource does not comply with.

A resource is compliant if it complies with all the AWS Config rules
that evaluate it. It is noncompliant if it does not comply with one or
more of these rules.

If AWS Config has no current evaluation results for the resource, it
returns C<InsufficientData>. This result might indicate one of the
following conditions about the rules that evaluate the resource:

=over

=item * AWS Config has never invoked an evaluation for the rule. To
check whether it has, use the C<DescribeConfigRuleEvaluationStatus>
action to get the C<LastSuccessfulInvocationTime> and
C<LastFailedInvocationTime>.

=item * The rule's AWS Lambda function is failing to send evaluation
results to AWS Config. Verify that the role that you assigned to your
configuration recorder includes the C<config:PutEvaluations>
permission. If the rule is a customer managed rule, verify that the AWS
Lambda execution role includes the C<config:PutEvaluations> permission.

=item * The rule's AWS Lambda function has returned C<NOT_APPLICABLE>
for all evaluation results. This can occur if the resources were
deleted or removed from the rule's scope.

=back











=head2 DescribeConfigRuleEvaluationStatus([ConfigRuleNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Config::DescribeConfigRuleEvaluationStatus>

Returns: a L<Paws::Config::DescribeConfigRuleEvaluationStatusResponse> instance

  

Returns status information for each of your AWS managed Config rules.
The status includes information such as the last time AWS Config
invoked the rule, the last time AWS Config failed to invoke the rule,
and the related error for the last failure.











=head2 DescribeConfigRules([ConfigRuleNames => ArrayRef[Str], NextToken => Str])

Each argument is described in detail in: L<Paws::Config::DescribeConfigRules>

Returns: a L<Paws::Config::DescribeConfigRulesResponse> instance

  

Returns details about your AWS Config rules.











=head2 DescribeConfigurationRecorders([ConfigurationRecorderNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Config::DescribeConfigurationRecorders>

Returns: a L<Paws::Config::DescribeConfigurationRecordersResponse> instance

  

Returns the name of one or more specified configuration recorders. If
the recorder name is not specified, this action returns the names of
all the configuration recorders associated with the account.

Currently, you can specify only one configuration recorder per account.











=head2 DescribeConfigurationRecorderStatus([ConfigurationRecorderNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Config::DescribeConfigurationRecorderStatus>

Returns: a L<Paws::Config::DescribeConfigurationRecorderStatusResponse> instance

  

Returns the current status of the specified configuration recorder. If
a configuration recorder is not specified, this action returns the
status of all configuration recorder associated with the account.

Currently, you can specify only one configuration recorder per account.











=head2 DescribeDeliveryChannels([DeliveryChannelNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Config::DescribeDeliveryChannels>

Returns: a L<Paws::Config::DescribeDeliveryChannelsResponse> instance

  

Returns details about the specified delivery channel. If a delivery
channel is not specified, this action returns the details of all
delivery channels associated with the account.

Currently, you can specify only one delivery channel per account.











=head2 DescribeDeliveryChannelStatus([DeliveryChannelNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Config::DescribeDeliveryChannelStatus>

Returns: a L<Paws::Config::DescribeDeliveryChannelStatusResponse> instance

  

Returns the current status of the specified delivery channel. If a
delivery channel is not specified, this action returns the current
status of all delivery channels associated with the account.

Currently, you can specify only one delivery channel per account.











=head2 GetComplianceDetailsByConfigRule(ConfigRuleName => Str, [ComplianceTypes => ArrayRef[Str], Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Config::GetComplianceDetailsByConfigRule>

Returns: a L<Paws::Config::GetComplianceDetailsByConfigRuleResponse> instance

  

Returns the evaluation results for the specified AWS Config rule. The
results indicate which AWS resources were evaluated by the rule, when
each resource was last evaluated, and whether each resource complies
with the rule.











=head2 GetComplianceDetailsByResource(ResourceId => Str, ResourceType => Str, [ComplianceTypes => ArrayRef[Str], NextToken => Str])

Each argument is described in detail in: L<Paws::Config::GetComplianceDetailsByResource>

Returns: a L<Paws::Config::GetComplianceDetailsByResourceResponse> instance

  

Returns the evaluation results for the specified AWS resource. The
results indicate which AWS Config rules were used to evaluate the
resource, when each rule was last used, and whether the resource
complies with each rule.











=head2 GetComplianceSummaryByConfigRule( => )

Each argument is described in detail in: L<Paws::Config::GetComplianceSummaryByConfigRule>

Returns: a L<Paws::Config::GetComplianceSummaryByConfigRuleResponse> instance

  

Returns the number of AWS Config rules that are compliant and
noncompliant, up to a maximum of 25 for each.











=head2 GetComplianceSummaryByResourceType([ResourceTypes => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::Config::GetComplianceSummaryByResourceType>

Returns: a L<Paws::Config::GetComplianceSummaryByResourceTypeResponse> instance

  

Returns the number of resources that are compliant and the number that
are noncompliant. You can specify one or more resource types to get
these numbers for each resource type. The maximum number returned is
100.











=head2 GetResourceConfigHistory(resourceId => Str, resourceType => Str, [chronologicalOrder => Str, earlierTime => Str, laterTime => Str, limit => Int, nextToken => Str])

Each argument is described in detail in: L<Paws::Config::GetResourceConfigHistory>

Returns: a L<Paws::Config::GetResourceConfigHistoryResponse> instance

  

Returns a list of configuration items for the specified resource. The
list contains details about each state of the resource during the
specified time interval.

The response is paginated, and by default, AWS Config returns a limit
of 10 configuration items per page. You can customize this number with
the C<limit> parameter. The response includes a C<nextToken> string,
and to get the next page of results, run the request again and enter
this string for the C<nextToken> parameter.

Each call to the API is limited to span a duration of seven days. It is
likely that the number of records returned is smaller than the
specified C<limit>. In such cases, you can make another call, using the
C<nextToken>.











=head2 ListDiscoveredResources(resourceType => Str, [includeDeletedResources => Bool, limit => Int, nextToken => Str, resourceIds => ArrayRef[Str], resourceName => Str])

Each argument is described in detail in: L<Paws::Config::ListDiscoveredResources>

Returns: a L<Paws::Config::ListDiscoveredResourcesResponse> instance

  

Accepts a resource type and returns a list of resource identifiers for
the resources of that type. A resource identifier includes the resource
type, ID, and (if available) the custom resource name. The results
consist of resources that AWS Config has discovered, including those
that AWS Config is not currently recording. You can narrow the results
to include only resources that have specific resource IDs or a resource
name.

You can specify either resource IDs or a resource name but not both in
the same request.

The response is paginated, and by default AWS Config lists 100 resource
identifiers on each page. You can customize this number with the
C<limit> parameter. The response includes a C<nextToken> string, and to
get the next page of results, run the request again and enter this
string for the C<nextToken> parameter.











=head2 PutConfigRule(ConfigRule => Paws::Config::ConfigRule)

Each argument is described in detail in: L<Paws::Config::PutConfigRule>

Returns: nothing

  

Adds or updates an AWS Config rule for evaluating whether your AWS
resources comply with your desired configurations.

You can use this action for customer managed Config rules and AWS
managed Config rules. A customer managed Config rule is a custom rule
that you develop and maintain. An AWS managed Config rule is a
customizable, predefined rule that is provided by AWS Config.

If you are adding a new customer managed Config rule, you must first
create the AWS Lambda function that the rule invokes to evaluate your
resources. When you use the C<PutConfigRule> action to add the rule to
AWS Config, you must specify the Amazon Resource Name (ARN) that AWS
Lambda assigns to the function. Specify the ARN for the
C<SourceIdentifier> key. This key is part of the C<Source> object,
which is part of the C<ConfigRule> object.

If you are adding a new AWS managed Config rule, specify the rule's
identifier for the C<SourceIdentifier> key. To reference AWS managed
Config rule identifiers, see Using AWS Managed Config Rules.

For any new rule that you add, specify the C<ConfigRuleName> in the
C<ConfigRule> object. Do not specify the C<ConfigRuleArn> or the
C<ConfigRuleId>. These values are generated by AWS Config for new
rules.

If you are updating a rule that you have added previously, specify the
rule's C<ConfigRuleName>, C<ConfigRuleId>, or C<ConfigRuleArn> in the
C<ConfigRule> data type that you use in this request.

The maximum number of rules that AWS Config supports is 25.

For more information about developing and using AWS Config rules, see
Evaluating AWS Resource Configurations with AWS Config in the I<AWS
Config Developer Guide>.











=head2 PutConfigurationRecorder(ConfigurationRecorder => Paws::Config::ConfigurationRecorder)

Each argument is described in detail in: L<Paws::Config::PutConfigurationRecorder>

Returns: nothing

  

Creates a new configuration recorder to record the selected resource
configurations.

You can use this action to change the role C<roleARN> and/or the
C<recordingGroup> of an existing recorder. To change the role, call the
action on the existing configuration recorder and specify a role.

Currently, you can specify only one configuration recorder per account.

If C<ConfigurationRecorder> does not have the B<recordingGroup>
parameter specified, the default is to record all supported resource
types.











=head2 PutDeliveryChannel(DeliveryChannel => Paws::Config::DeliveryChannel)

Each argument is described in detail in: L<Paws::Config::PutDeliveryChannel>

Returns: nothing

  

Creates a new delivery channel object to deliver the configuration
information to an Amazon S3 bucket, and to an Amazon SNS topic.

You can use this action to change the Amazon S3 bucket or an Amazon SNS
topic of the existing delivery channel. To change the Amazon S3 bucket
or an Amazon SNS topic, call this action and specify the changed values
for the S3 bucket and the SNS topic. If you specify a different value
for either the S3 bucket or the SNS topic, this action will keep the
existing value for the parameter that is not changed.

Currently, you can specify only one delivery channel per account.











=head2 PutEvaluations(ResultToken => Str, [Evaluations => ArrayRef[Paws::Config::Evaluation]])

Each argument is described in detail in: L<Paws::Config::PutEvaluations>

Returns: a L<Paws::Config::PutEvaluationsResponse> instance

  

Used by an AWS Lambda function to deliver evaluation results to AWS
Config. This action is required in every AWS Lambda function that is
invoked by an AWS Config rule.











=head2 StartConfigurationRecorder(ConfigurationRecorderName => Str)

Each argument is described in detail in: L<Paws::Config::StartConfigurationRecorder>

Returns: nothing

  

Starts recording configurations of the AWS resources you have selected
to record in your AWS account.

You must have created at least one delivery channel to successfully
start the configuration recorder.











=head2 StopConfigurationRecorder(ConfigurationRecorderName => Str)

Each argument is described in detail in: L<Paws::Config::StopConfigurationRecorder>

Returns: nothing

  

Stops recording configurations of the AWS resources you have selected
to record in your AWS account.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

