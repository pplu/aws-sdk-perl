
package Paws::S3::DeleteObjectOutput;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::S3::Types qw//;
  has DeleteMarker => (is => 'ro', isa => Bool);
  has RequestCharged => (is => 'ro', isa => Str);
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeleteMarker' => {
                                   'type' => 'Bool'
                                 },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'VersionId' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged',
                       'VersionId' => 'x-amz-version-id',
                       'DeleteMarker' => 'x-amz-delete-marker'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectOutput

=head1 ATTRIBUTES


=head2 DeleteMarker => Bool

Specifies whether the versioned object that was permanently deleted was
(true) or was not (false) a delete marker.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 VersionId => Str

Returns the version ID of the delete marker created as a result of the
DELETE operation.




=cut

