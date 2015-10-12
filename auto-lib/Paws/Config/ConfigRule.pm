package Paws::Config::ConfigRule;
  use Moose;
  has ConfigRuleArn => (is => 'ro', isa => 'Str');
  has ConfigRuleId => (is => 'ro', isa => 'Str');
  has ConfigRuleName => (is => 'ro', isa => 'Str');
  has ConfigRuleState => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InputParameters => (is => 'ro', isa => 'Str');
  has MaximumExecutionFrequency => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Paws::Config::Scope');
  has Source => (is => 'ro', isa => 'Paws::Config::Source', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigRule

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigRule object:

  $service_obj->Method(Att1 => { ConfigRuleArn => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigRuleArn

=head1 ATTRIBUTES

=head2 ConfigRuleArn => Str

  

The Amazon Resource Name (ARN) of the AWS Config rule.










=head2 ConfigRuleId => Str

  

The ID of the AWS Config rule.










=head2 ConfigRuleName => Str

  

The name that you assign to the AWS Config rule. The name is required
if you are adding a new rule.










=head2 ConfigRuleState => Str

  

Indicates whether the AWS Config rule is active or currently being
deleted by AWS Config.

AWS Config sets the state of a rule to C<DELETING> temporarily after
you use the C<DeleteConfigRule> request to delete the rule. After AWS
Config finishes deleting a rule, the rule and all of its evaluations
are erased and no longer available.

You cannot add a rule to AWS Config that has the state set to
C<DELETING>. If you want to delete a rule, you must use the
C<DeleteConfigRule> request.










=head2 Description => Str

  

The description that you provide for the AWS Config rule.










=head2 InputParameters => Str

  

A string in JSON format that is passed to the AWS Config rule Lambda
function.










=head2 MaximumExecutionFrequency => Str

  

The maximum frequency at which the AWS Config rule runs evaluations.

If your rule is periodic, meaning it runs an evaluation when AWS Config
delivers a configuration snapshot, then it cannot run evaluations more
frequently than AWS Config delivers the snapshots. For periodic rules,
set the value of the C<MaximumExecutionFrequency> key to be equal to or
greater than the value of the C<deliveryFrequency> key, which is part
of C<ConfigSnapshotDeliveryProperties>. To update the frequency with
which AWS Config delivers your snapshots, use the C<PutDeliveryChannel>
action.










=head2 Scope => Paws::Config::Scope

  

Defines which resources the AWS Config rule evaluates. The scope can
include one or more resource types, a combination of a tag key and
value, or a combination of one resource type and one or more resource
IDs. Specify a scope to constrain the resources that are evaluated. If
you do not specify a scope, the AWS Config Rule evaluates all resources
in the recording group.










=head2 B<REQUIRED> Source => Paws::Config::Source

  

Provides the rule owner (AWS or customer), the rule identifier, and the
events that cause the function to evaluate your AWS resources.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

