
package Paws::S3::DeleteObjectTaggingOutput;
  use Moose;
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-version-id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectTaggingOutput

=head1 ATTRIBUTES


=head2 VersionId => Str

The versionId of the object the tag-set was removed from.




=cut

