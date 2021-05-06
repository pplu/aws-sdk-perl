
package Paws::CloudDirectory::BatchWriteResponse;
  use Moose;
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::BatchWriteOperationResponse]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchWriteResponse

=head1 ATTRIBUTES


=head2 Responses => ArrayRef[L<Paws::CloudDirectory::BatchWriteOperationResponse>]

A list of all the responses for each batch write.


=head2 _request_id => Str


=cut

