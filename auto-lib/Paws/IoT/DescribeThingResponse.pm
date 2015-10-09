
package Paws::IoT::DescribeThingResponse;
  use Moose;
  has attributes => (is => 'ro', isa => 'Paws::IoT::Attributes');
  has defaultClientId => (is => 'ro', isa => 'Str');
  has thingName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingResponse

=head1 ATTRIBUTES

=head2 attributes => Paws::IoT::Attributes

  

The attributes which are name/value pairs in JSON format. For example:

{\"attributes\":{\"some-name1\":\"some-value1\E<rdquo>},
{\"some-name2\":\"some-value2\E<rdquo>},
{\"some-name3\":\"some-value3\E<rdquo>}}









=head2 defaultClientId => Str

  

The default client ID.









=head2 thingName => Str

  

The name of the thing.











=cut

