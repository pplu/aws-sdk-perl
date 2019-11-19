
package Paws::CloudFront::GetFieldLevelEncryptionResult;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ETag' => {
                           'type' => 'Str'
                         },
               'FieldLevelEncryption' => {
                                           'class' => 'Paws::CloudFront::FieldLevelEncryption',
                                           'type' => 'CloudFront_FieldLevelEncryption'
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

Paws::CloudFront::GetFieldLevelEncryptionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption configuration. For
example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryption => CloudFront_FieldLevelEncryption

Return the field-level encryption configuration information.




=cut

