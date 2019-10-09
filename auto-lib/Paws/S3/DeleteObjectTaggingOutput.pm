
package Paws::S3::DeleteObjectTaggingOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VersionId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInHeader' => {
                       'VersionId' => 'x-amz-version-id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectTaggingOutput

=head1 ATTRIBUTES


=head2 VersionId => Str

The versionId of the object the tag-set was removed from.




=cut

