
package Paws::IoT::SearchIndexResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_ThingDocument IoT_ThingGroupDocument/;
  has NextToken => (is => 'ro', isa => Str);
  has ThingGroups => (is => 'ro', isa => ArrayRef[IoT_ThingGroupDocument]);
  has Things => (is => 'ro', isa => ArrayRef[IoT_ThingDocument]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingGroups' => {
                                  'class' => 'Paws::IoT::ThingGroupDocument',
                                  'type' => 'ArrayRef[IoT_ThingGroupDocument]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Things' => {
                             'class' => 'Paws::IoT::ThingDocument',
                             'type' => 'ArrayRef[IoT_ThingDocument]'
                           }
             },
  'NameInRequest' => {
                       'ThingGroups' => 'thingGroups',
                       'NextToken' => 'nextToken',
                       'Things' => 'things'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SearchIndexResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or null if there are no
additional results.


=head2 ThingGroups => ArrayRef[IoT_ThingGroupDocument]

The thing groups that match the search query.


=head2 Things => ArrayRef[IoT_ThingDocument]

The things that match the search query.


=head2 _request_id => Str


=cut

