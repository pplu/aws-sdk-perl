
package Paws::Lightsail::GetRegionsResult;
  use Moose;
  has Regions => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Region]', traits => ['NameInRequest'], request_name => 'regions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRegionsResult

=head1 ATTRIBUTES


=head2 Regions => ArrayRef[L<Paws::Lightsail::Region>]

An array of key-value pairs containing information about your get
regions request.


=head2 _request_id => Str


=cut

1;