
package Paws::IoT::GetIndexingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_ThingIndexingConfiguration IoT_ThingGroupIndexingConfiguration/;
  has ThingGroupIndexingConfiguration => (is => 'ro', isa => IoT_ThingGroupIndexingConfiguration);
  has ThingIndexingConfiguration => (is => 'ro', isa => IoT_ThingIndexingConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThingGroupIndexingConfiguration' => {
                                                      'class' => 'Paws::IoT::ThingGroupIndexingConfiguration',
                                                      'type' => 'IoT_ThingGroupIndexingConfiguration'
                                                    },
               'ThingIndexingConfiguration' => {
                                                 'class' => 'Paws::IoT::ThingIndexingConfiguration',
                                                 'type' => 'IoT_ThingIndexingConfiguration'
                                               }
             },
  'NameInRequest' => {
                       'ThingGroupIndexingConfiguration' => 'thingGroupIndexingConfiguration',
                       'ThingIndexingConfiguration' => 'thingIndexingConfiguration'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetIndexingConfigurationResponse

=head1 ATTRIBUTES


=head2 ThingGroupIndexingConfiguration => IoT_ThingGroupIndexingConfiguration

The index configuration.


=head2 ThingIndexingConfiguration => IoT_ThingIndexingConfiguration

Thing indexing configuration.


=head2 _request_id => Str


=cut

