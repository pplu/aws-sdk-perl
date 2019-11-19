# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListTargetsByRuleResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_Target/;
  has NextToken => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[CloudWatchEvents_Target]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Targets' => {
                              'class' => 'Paws::CloudWatchEvents::Target',
                              'type' => 'ArrayRef[CloudWatchEvents_Target]'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTargetsByRuleResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates whether there are additional results to retrieve. If there
are no more results, the value is null.


=head2 Targets => ArrayRef[CloudWatchEvents_Target]

The targets assigned to the rule.


=head2 _request_id => Str


=cut

1;