
package Paws::CodeStarNotifications::DeleteNotificationRuleResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStarNotifications::Types qw//;
  has Arn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
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

Paws::CodeStarNotifications::DeleteNotificationRuleResult

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the deleted notification rule.


=head2 _request_id => Str


=cut

