
package Paws::Glacier::ArchiveCreationOutput;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-archive-id');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sha256-tree-hash');
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ArchiveCreationOutput

=head1 ATTRIBUTES


=head2 ArchiveId => Str

The ID of the archive. This value is also included as part of the
location.


=head2 Checksum => Str

The checksum of the archive computed by Amazon Glacier.


=head2 Location => Str

The relative URI path of the newly added archive resource.


=head2 _request_id => Str


=cut

