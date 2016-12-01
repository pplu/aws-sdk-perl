
package Paws::S3::GetObjectTaggingOutput;
  use Moose;
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::S3::Tag]', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-version-id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectTaggingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[L<Paws::S3::Tag>]





=head2 VersionId => Str






=cut

