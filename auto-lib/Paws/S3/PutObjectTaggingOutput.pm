
package Paws::S3::PutObjectTaggingOutput;
  use Moose;
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-version-id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectTaggingOutput

=head1 ATTRIBUTES


=head2 VersionId => Str






=cut

