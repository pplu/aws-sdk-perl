
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
  'NameInRequest' => {
                       'Things' => 'things',
                       'NextToken' => 'nextToken',
                       'ThingGroups' => 'thingGroups'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThingGroups' => {
                                  'class' => 'Paws::IoT::ThingGroupDocument',
                                  'type' => 'ArrayRef[IoT_ThingGroupDocument]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Things' => {
                             'type' => 'ArrayRef[IoT_ThingDocument]',
                             'class' => 'Paws::IoT::ThingDocument'
                           }
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

