
package Paws::CodeStarNotifications::UpdateNotificationRule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has DetailType => (is => 'ro', isa => 'Str');
  has EventTypeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarNotifications::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotificationRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateNotificationRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarNotifications::UpdateNotificationRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::UpdateNotificationRule - Arguments for method UpdateNotificationRule on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotificationRule on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method UpdateNotificationRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotificationRule.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $UpdateNotificationRuleResult =
      $codestar -notifications->UpdateNotificationRule(
      Arn          => 'MyNotificationRuleArn',
      DetailType   => 'BASIC',                   # OPTIONAL
      EventTypeIds => [
        'MyEventTypeId', ...                     # min: 1, max: 200
      ],                                         # OPTIONAL
      Name    => 'MyNotificationRuleName',       # OPTIONAL
      Status  => 'ENABLED',                      # OPTIONAL
      Targets => [
        {
          TargetAddress => 'MyTargetAddress',    # min: 1, max: 320; OPTIONAL
          TargetType    => 'MyTargetType',       # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/UpdateNotificationRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the notification rule.



=head2 DetailType => Str

The level of detail to include in the notifications for this resource.
BASIC will include only the contents of the event as it would appear in
AWS CloudWatch. FULL will include any supplemental information provided
by AWS CodeStar Notifications and/or the service for the resource for
which the notification is created.

Valid values are: C<"BASIC">, C<"FULL">

=head2 EventTypeIds => ArrayRef[Str|Undef]

A list of event types associated with this notification rule.



=head2 Name => Str

The name of the notification rule.



=head2 Status => Str

The status of the notification rule. Valid statuses include enabled
(sending notifications) or disabled (not sending notifications).

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Targets => ArrayRef[L<Paws::CodeStarNotifications::Target>]

The address and type of the targets to receive notifications from this
notification rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotificationRule in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

