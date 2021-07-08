
package Paws::Lightsail::GetContainerAPIMetadataResult;
  use Moose;
  has Metadata => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContainerServiceMetadataEntry]', traits => ['NameInRequest'], request_name => 'metadata' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerAPIMetadataResult

=head1 ATTRIBUTES


=head2 Metadata => ArrayRef[L<Paws::Lightsail::ContainerServiceMetadataEntry>]

Metadata about Lightsail containers, such as the current version of the
Lightsail Control (lightsailctl) plugin.


=head2 _request_id => Str


=cut

1;