# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListRuleNamesByTargetResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CloudWatchEvents::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has RuleNames => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuleNames' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRuleNamesByTargetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates whether there are additional results to retrieve. If there
are no more results, the value is null.


=head2 RuleNames => ArrayRef[Str|Undef]

The names of the rules that can invoke the given target.


=head2 _request_id => Str


=cut

1;