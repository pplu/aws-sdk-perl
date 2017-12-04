
package Paws::CloudDirectory::BatchReadResponse;
  use Moose;
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::BatchReadOperationResponse]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchReadResponse

=head1 ATTRIBUTES


=head2 Responses => ArrayRef[L<Paws::CloudDirectory::BatchReadOperationResponse>]

A list of all the responses for each batch read.


=head2 _request_id => Str


=cut

