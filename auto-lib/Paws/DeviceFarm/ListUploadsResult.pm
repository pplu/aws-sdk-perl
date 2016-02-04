
package Paws::DeviceFarm::ListUploadsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Uploads => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Upload]', traits => ['Unwrapped'], xmlname => 'uploads' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListUploadsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.



=head2 Uploads => ArrayRef[L<Paws::DeviceFarm::Upload>]

Information about the uploads.




=cut

1;