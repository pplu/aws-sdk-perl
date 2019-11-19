
package Paws::S3::GetObjectTaggingOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Tag/;
  has TagSet => (is => 'ro', isa => ArrayRef[S3_Tag], required => 1);
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'VersionId' => 'x-amz-version-id'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'TagSet' => {
                             'class' => 'Paws::S3::Tag',
                             'type' => 'ArrayRef[S3_Tag]'
                           }
             },
  'IsRequired' => {
                    'TagSet' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectTaggingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[S3_Tag]

Contains the tag set.



=head2 VersionId => Str

The versionId of the object for which you got the tagging information.




=cut

