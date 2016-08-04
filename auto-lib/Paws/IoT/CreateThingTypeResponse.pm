
package Paws::IoT::CreateThingTypeResponse;
  use Moose;
  has ThingTypeArn => (is => 'ro', isa => 'Str');
  has ThingTypeName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingTypeResponse

=head1 ATTRIBUTES


=head2 ThingTypeArn => Str

The Amazon Resource Name (ARN) of the thing type.



=head2 ThingTypeName => Str

The name of the thing type.




=cut

