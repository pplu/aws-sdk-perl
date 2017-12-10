
package Paws::Lightsail::GetDiskResult;
  use Moose;
  has Disk => (is => 'ro', isa => 'Paws::Lightsail::Disk', traits => ['NameInRequest'], request_name => 'disk' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDiskResult

=head1 ATTRIBUTES


=head2 Disk => L<Paws::Lightsail::Disk>

An object containing information about the disk.


=head2 _request_id => Str


=cut

1;