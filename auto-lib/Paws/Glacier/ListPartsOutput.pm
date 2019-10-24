
package Paws::Glacier::ListPartsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Glacier::Types qw/Glacier_PartListElement/;
  has ArchiveDescription => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has Marker => (is => 'ro', isa => Str);
  has MultipartUploadId => (is => 'ro', isa => Str);
  has Parts => (is => 'ro', isa => ArrayRef[Glacier_PartListElement]);
  has PartSizeInBytes => (is => 'ro', isa => Int);
  has VaultARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VaultARN' => {
                               'type' => 'Str'
                             },
               'ArchiveDescription' => {
                                         'type' => 'Str'
                                       },
               'Parts' => {
                            'class' => 'Paws::Glacier::PartListElement',
                            'type' => 'ArrayRef[Glacier_PartListElement]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'MultipartUploadId' => {
                                        'type' => 'Str'
                                      },
               'Marker' => {
                             'type' => 'Str'
                           },
               'PartSizeInBytes' => {
                                      'type' => 'Int'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListPartsOutput

=head1 ATTRIBUTES


=head2 ArchiveDescription => Str

The description of the archive that was specified in the Initiate
Multipart Upload request.


=head2 CreationDate => Str

The UTC time at which the multipart upload was initiated.


=head2 Marker => Str

An opaque string that represents where to continue pagination of the
results. You use the marker in a new List Parts request to obtain more
jobs in the list. If there are no more parts, this value is C<null>.


=head2 MultipartUploadId => Str

The ID of the upload to which the parts are associated.


=head2 Parts => ArrayRef[Glacier_PartListElement]

A list of the part sizes of the multipart upload. Each object in the
array contains a C<RangeBytes> and C<sha256-tree-hash> name/value pair.


=head2 PartSizeInBytes => Int

The part size in bytes. This is the same value that you specified in
the Initiate Multipart Upload request.


=head2 VaultARN => Str

The Amazon Resource Name (ARN) of the vault to which the multipart
upload was initiated.


=head2 _request_id => Str


=cut

