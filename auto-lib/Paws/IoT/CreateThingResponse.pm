
package Paws::IoT::CreateThingResponse;
  use Moose;
  has ThingArn => (is => 'ro', isa => 'Str');
  has ThingName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingResponse

=head1 ATTRIBUTES


=head2 ThingArn => Str

The ARN of the new thing.



=head2 ThingName => Str

The name of the new thing.




=cut

