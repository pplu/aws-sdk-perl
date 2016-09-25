
package Paws::EC2::ReleaseHostsResult;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'successful', traits => ['Unwrapped',]);
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UnsuccessfulItem]', xmlname => 'unsuccessful', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReleaseHostsResult

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts that were successfully released.



=head2 Unsuccessful => ArrayRef[L<Paws::EC2::UnsuccessfulItem>]

The IDs of the Dedicated Hosts that could not be released, including an
error message.




=cut

