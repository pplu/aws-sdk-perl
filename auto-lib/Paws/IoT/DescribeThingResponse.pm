
package Paws::IoT::DescribeThingResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::Attributes');
  has DefaultClientId => (is => 'ro', isa => 'Str');
  has ThingName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT::Attributes>

The attributes, which are name/value pairs in JSON format (for example:
{\"attributes\":{\"some-name1\":\"some-value1\"},
{\"some-name2\":\"some-value2\"}, {\"some-name3\":\"some-value3\"}})



=head2 DefaultClientId => Str

The default client ID.



=head2 ThingName => Str

The name of the thing.




=cut

