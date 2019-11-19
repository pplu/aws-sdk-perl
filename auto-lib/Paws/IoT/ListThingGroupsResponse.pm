
package Paws::IoT::ListThingGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_GroupNameAndArn/;
  has NextToken => (is => 'ro', isa => Str);
  has ThingGroups => (is => 'ro', isa => ArrayRef[IoT_GroupNameAndArn]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ThingGroups' => 'thingGroups'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThingGroups' => {
                                  'class' => 'Paws::IoT::GroupNameAndArn',
                                  'type' => 'ArrayRef[IoT_GroupNameAndArn]'
                                },
               'NextToken' => {
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

Paws::IoT::ListThingGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 ThingGroups => ArrayRef[IoT_GroupNameAndArn]

The thing groups.


=head2 _request_id => Str


=cut

