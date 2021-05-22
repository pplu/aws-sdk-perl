
package Paws::EMR::CreateStudioOutput;
  use Moose;
  has StudioId => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreateStudioOutput

=head1 ATTRIBUTES


=head2 StudioId => Str

The ID of the Amazon EMR Studio.


=head2 Url => Str

The unique Studio access URL.


=head2 _request_id => Str


=cut

1;