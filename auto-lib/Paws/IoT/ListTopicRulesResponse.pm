
package Paws::IoT::ListTopicRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_TopicRuleListItem/;
  has NextToken => (is => 'ro', isa => Str);
  has Rules => (is => 'ro', isa => ArrayRef[IoT_TopicRuleListItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::IoT::TopicRuleListItem',
                            'type' => 'ArrayRef[IoT_TopicRuleListItem]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Rules' => 'rules',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTopicRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to retrieve the next value.


=head2 Rules => ArrayRef[IoT_TopicRuleListItem]

The rules.


=head2 _request_id => Str


=cut

