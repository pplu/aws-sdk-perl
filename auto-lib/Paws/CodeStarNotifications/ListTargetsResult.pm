
package Paws::CodeStarNotifications::ListTargetsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_TargetSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[CodeStarNotifications_TargetSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Targets' => {
                              'type' => 'ArrayRef[CodeStarNotifications_TargetSummary]',
                              'class' => 'Paws::CodeStarNotifications::TargetSummary'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListTargetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of results.


=head2 Targets => ArrayRef[CodeStarNotifications_TargetSummary]

The list of notification rule targets.


=head2 _request_id => Str


=cut

