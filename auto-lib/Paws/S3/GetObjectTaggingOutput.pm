
package Paws::S3::GetObjectTaggingOutput;
  use Moose;
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::S3::Tag]', request_name => 'Tag', traits => ['NameInRequest'], required => 1);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectTaggingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[L<Paws::S3::Tag>]

Contains the tag set.



=head2 VersionId => Str

The versionId of the object for which you got the tagging information.




=cut

