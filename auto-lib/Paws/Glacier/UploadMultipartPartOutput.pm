
package Paws::Glacier::UploadMultipartPartOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has Checksum => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Checksum' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'Checksum' => 'x-amz-sha256-tree-hash'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::UploadMultipartPartOutput

=head1 ATTRIBUTES


=head2 Checksum => Str

The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded
part.


=head2 _request_id => Str


=cut

