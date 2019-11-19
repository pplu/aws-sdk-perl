
package Paws::CodeStarNotifications::ListNotificationRulesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_NotificationRuleSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has NotificationRules => (is => 'ro', isa => ArrayRef[CodeStarNotifications_NotificationRuleSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NotificationRules' => {
                                        'class' => 'Paws::CodeStarNotifications::NotificationRuleSummary',
                                        'type' => 'ArrayRef[CodeStarNotifications_NotificationRuleSummary]'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListNotificationRulesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 NotificationRules => ArrayRef[CodeStarNotifications_NotificationRuleSummary]

The list of notification rules for the AWS account, by Amazon Resource
Name (ARN) and ID.


=head2 _request_id => Str


=cut

