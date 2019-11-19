# Generated from json/callresult_class.tt

package Paws::KMS::DescribeKeyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KMS::Types qw/KMS_KeyMetadata/;
  has KeyMetadata => (is => 'ro', isa => KMS_KeyMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyMetadata' => {
                                  'class' => 'Paws::KMS::KeyMetadata',
                                  'type' => 'KMS_KeyMetadata'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::DescribeKeyResponse

=head1 ATTRIBUTES


=head2 KeyMetadata => KMS_KeyMetadata

Metadata associated with the key.


=head2 _request_id => Str


=cut

1;