
package Paws::SSM::ListOpsMetadataResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OpsMetadataList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListOpsMetadataResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 OpsMetadataList => ArrayRef[L<Paws::SSM::OpsMetadata>]

Returns a list of OpsMetadata objects.


=head2 _request_id => Str


=cut

1;