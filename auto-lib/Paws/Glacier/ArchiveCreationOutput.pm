
package Paws::Glacier::ArchiveCreationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has ArchiveId => (is => 'ro', isa => Str);
  has Checksum => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'Checksum' => 'x-amz-sha256-tree-hash',
                       'Location' => 'Location',
                       'ArchiveId' => 'x-amz-archive-id'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ArchiveId' => {
                                'type' => 'Str'
                              },
               'Location' => {
                               'type' => 'Str'
                             },
               'Checksum' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ArchiveCreationOutput

=head1 ATTRIBUTES


=head2 ArchiveId => Str

The ID of the archive. This value is also included as part of the
location.


=head2 Checksum => Str

The checksum of the archive computed by Amazon S3 Glacier.


=head2 Location => Str

The relative URI path of the newly added archive resource.


=head2 _request_id => Str


=cut

