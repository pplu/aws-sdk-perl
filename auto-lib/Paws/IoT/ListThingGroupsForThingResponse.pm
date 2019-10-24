
package Paws::IoT::ListThingGroupsForThingResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_GroupNameAndArn/;
  has NextToken => (is => 'ro', isa => Str);
  has ThingGroups => (is => 'ro', isa => ArrayRef[IoT_GroupNameAndArn]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingGroups' => {
                                  'class' => 'Paws::IoT::GroupNameAndArn',
                                  'type' => 'ArrayRef[IoT_GroupNameAndArn]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ThingGroups' => 'thingGroups',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingGroupsForThingResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 ThingGroups => ArrayRef[IoT_GroupNameAndArn]

The thing groups.


=head2 _request_id => Str


=cut

