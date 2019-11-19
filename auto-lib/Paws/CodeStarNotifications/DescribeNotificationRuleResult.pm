
package Paws::CodeStarNotifications::DescribeNotificationRuleResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_TargetSummary CodeStarNotifications_EventTypeSummary CodeStarNotifications_Tags/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has CreatedBy => (is => 'ro', isa => Str);
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has DetailType => (is => 'ro', isa => Str);
  has EventTypes => (is => 'ro', isa => ArrayRef[CodeStarNotifications_EventTypeSummary]);
  has LastModifiedTimestamp => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Resource => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => CodeStarNotifications_Tags);
  has Targets => (is => 'ro', isa => ArrayRef[CodeStarNotifications_TargetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Arn' => 1
                  },
  'types' => {
               'EventTypes' => {
                                 'class' => 'Paws::CodeStarNotifications::EventTypeSummary',
                                 'type' => 'ArrayRef[CodeStarNotifications_EventTypeSummary]'
                               },
               'LastModifiedTimestamp' => {
                                            'type' => 'Str'
                                          },
               'Tags' => {
                           'class' => 'Paws::CodeStarNotifications::Tags',
                           'type' => 'CodeStarNotifications_Tags'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Targets' => {
                              'type' => 'ArrayRef[CodeStarNotifications_TargetSummary]',
                              'class' => 'Paws::CodeStarNotifications::TargetSummary'
                            },
               'CreatedTimestamp' => {
                                       'type' => 'Str'
                                     },
               'Resource' => {
                               'type' => 'Str'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'DetailType' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'CreatedBy' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::DescribeNotificationRuleResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the notification rule.


=head2 CreatedBy => Str

The name or email alias of the person who created the notification
rule.


=head2 CreatedTimestamp => Str

The date and time the notification rule was created, in timestamp
format.


=head2 DetailType => Str

The level of detail included in the notifications for this resource.
BASIC will include only the contents of the event as it would appear in
AWS CloudWatch. FULL will include any supplemental information provided
by AWS CodeStar Notifications and/or the service for the resource for
which the notification is created.

Valid values are: C<"BASIC">, C<"FULL">
=head2 EventTypes => ArrayRef[CodeStarNotifications_EventTypeSummary]

A list of the event types associated with the notification rule.


=head2 LastModifiedTimestamp => Str

The date and time the notification rule was most recently updated, in
timestamp format.


=head2 Name => Str

The name of the notification rule.


=head2 Resource => Str

The Amazon Resource Name (ARN) of the resource associated with the
notification rule.


=head2 Status => Str

The status of the notification rule. Valid statuses are on (sending
notifications) or off (not sending notifications).

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Tags => CodeStarNotifications_Tags

The tags associated with the notification rule.


=head2 Targets => ArrayRef[CodeStarNotifications_TargetSummary]

A list of the SNS topics associated with the notification rule.


=head2 _request_id => Str


=cut

