
package Paws::IoT::ListThingTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_ThingTypeDefinition/;
  has NextToken => (is => 'ro', isa => Str);
  has ThingTypes => (is => 'ro', isa => ArrayRef[IoT_ThingTypeDefinition]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingTypes' => {
                                 'class' => 'Paws::IoT::ThingTypeDefinition',
                                 'type' => 'ArrayRef[IoT_ThingTypeDefinition]'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ThingTypes' => 'thingTypes',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 ThingTypes => ArrayRef[IoT_ThingTypeDefinition]

The thing types.


=head2 _request_id => Str


=cut

