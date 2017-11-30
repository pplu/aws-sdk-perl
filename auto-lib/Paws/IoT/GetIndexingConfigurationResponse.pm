
package Paws::IoT::GetIndexingConfigurationResponse;
  use Moose;
  has ThingIndexingConfiguration => (is => 'ro', isa => 'Paws::IoT::ThingIndexingConfiguration', traits => ['NameInRequest'], request_name => 'thingIndexingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetIndexingConfigurationResponse

=head1 ATTRIBUTES


=head2 ThingIndexingConfiguration => L<Paws::IoT::ThingIndexingConfiguration>

Thing indexing configuration.


=head2 _request_id => Str


=cut

