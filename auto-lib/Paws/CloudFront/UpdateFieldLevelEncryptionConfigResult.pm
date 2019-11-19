
package Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryption/;
  has ETag => (is => 'ro', isa => Str);
  has FieldLevelEncryption => (is => 'ro', isa => CloudFront_FieldLevelEncryption);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryption');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FieldLevelEncryption' => {
                                           'type' => 'CloudFront_FieldLevelEncryption',
                                           'class' => 'Paws::CloudFront::FieldLevelEncryption'
                                         },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFieldLevelEncryptionConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The value of the C<ETag> header that you received when updating the
configuration. For example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryption => CloudFront_FieldLevelEncryption

Return the results of updating the configuration.




=cut

