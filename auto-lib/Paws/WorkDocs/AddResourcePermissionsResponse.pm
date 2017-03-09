
package Paws::WorkDocs::AddResourcePermissionsResponse;
  use Moose;
  has ShareResults => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::ShareResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::AddResourcePermissionsResponse

=head1 ATTRIBUTES


=head2 ShareResults => ArrayRef[L<Paws::WorkDocs::ShareResult>]

The share results.


=head2 _request_id => Str


=cut

