# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::ListRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_Rule/;
  has NextToken => (is => 'ro', isa => Str);
  has Rules => (is => 'ro', isa => ArrayRef[CloudWatchEvents_Rule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Rules' => {
                            'type' => 'ArrayRef[CloudWatchEvents_Rule]',
                            'class' => 'Paws::CloudWatchEvents::Rule'
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

Paws::CloudWatchEvents::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates whether there are additional results to retrieve. If there
are no more results, the value is null.


=head2 Rules => ArrayRef[CloudWatchEvents_Rule]

The rules that match the specified criteria.


=head2 _request_id => Str


=cut

1;