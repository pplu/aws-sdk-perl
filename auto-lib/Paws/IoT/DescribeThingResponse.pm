
package Paws::IoT::DescribeThingResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::Attributes', traits => ['Unwrapped'], xmlname => 'attributes');
  has DefaultClientId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'defaultClientId');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'thingName');
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'thingTypeName');
  has Version => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT::Attributes>

The thing attributes.


=head2 DefaultClientId => Str

The default client ID.


=head2 ThingName => Str

The name of the thing.


=head2 ThingTypeName => Str

The thing type name.


=head2 Version => Int

The current version of the thing record in the registry.

To avoid unintentional changes to the information in the registry, you
can pass the version information in the C<expectedVersion> parameter of
the C<UpdateThing> and C<DeleteThing> calls.


=head2 _request_id => Str


=cut

