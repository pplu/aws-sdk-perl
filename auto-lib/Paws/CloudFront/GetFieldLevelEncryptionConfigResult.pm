
package Paws::CloudFront::GetFieldLevelEncryptionConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionConfig/;
  has ETag => (is => 'ro', isa => Str);
  has FieldLevelEncryptionConfig => (is => 'ro', isa => CloudFront_FieldLevelEncryptionConfig);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryptionConfig');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FieldLevelEncryptionConfig' => {
                                                 'class' => 'Paws::CloudFront::FieldLevelEncryptionConfig',
                                                 'type' => 'CloudFront_FieldLevelEncryptionConfig'
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

Paws::CloudFront::GetFieldLevelEncryptionConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption configuration. For
example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionConfig => CloudFront_FieldLevelEncryptionConfig

Return the field-level encryption configuration information.




=cut

