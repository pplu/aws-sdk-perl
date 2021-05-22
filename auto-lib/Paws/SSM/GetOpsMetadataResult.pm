
package Paws::SSM::GetOpsMetadataResult;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::SSM::MetadataMap');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetOpsMetadataResult

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::SSM::MetadataMap>

OpsMetadata for an Application Manager application.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 ResourceId => Str

The resource ID of the Application Manager application.


=head2 _request_id => Str


=cut

1;