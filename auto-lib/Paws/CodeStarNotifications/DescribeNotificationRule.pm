
package Paws::CodeStarNotifications::DescribeNotificationRule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeNotificationRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarNotifications::DescribeNotificationRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::DescribeNotificationRule - Arguments for method DescribeNotificationRule on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotificationRule on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method DescribeNotificationRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotificationRule.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $DescribeNotificationRuleResult =
      $codestar -notifications->DescribeNotificationRule(
      Arn => 'MyNotificationRuleArn',

      );

    # Results:
    my $Arn              = $DescribeNotificationRuleResult->Arn;
    my $CreatedBy        = $DescribeNotificationRuleResult->CreatedBy;
    my $CreatedTimestamp = $DescribeNotificationRuleResult->CreatedTimestamp;
    my $DetailType       = $DescribeNotificationRuleResult->DetailType;
    my $EventTypes       = $DescribeNotificationRuleResult->EventTypes;
    my $LastModifiedTimestamp =
      $DescribeNotificationRuleResult->LastModifiedTimestamp;
    my $Name     = $DescribeNotificationRuleResult->Name;
    my $Resource = $DescribeNotificationRuleResult->Resource;
    my $Status   = $DescribeNotificationRuleResult->Status;
    my $Tags     = $DescribeNotificationRuleResult->Tags;
    my $Targets  = $DescribeNotificationRuleResult->Targets;

# Returns a L<Paws::CodeStarNotifications::DescribeNotificationRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/DescribeNotificationRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the notification rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotificationRule in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

