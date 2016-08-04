
package Paws::IoT::DescribeThingResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'HashRef[Str]');
  has DefaultClientId => (is => 'ro', isa => 'Str');
  has ThingName => (is => 'ro', isa => 'Str');
  has ThingTypeName => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingResponse

=head1 ATTRIBUTES


=head2 Attributes => HashRef[Str]

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




=cut

