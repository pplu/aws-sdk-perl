
package Paws::Datasync::CreateLocationObjectStorageResponse;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationObjectStorageResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

The Amazon Resource Name (ARN) of the agents associated with the
self-managed object storage server location.


=head2 _request_id => Str


=cut

1;