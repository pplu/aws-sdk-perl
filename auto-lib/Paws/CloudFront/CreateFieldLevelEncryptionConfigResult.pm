
package Paws::CloudFront::CreateFieldLevelEncryptionConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryption/;
  has ETag => (is => 'ro', isa => Str);
  has FieldLevelEncryption => (is => 'ro', isa => CloudFront_FieldLevelEncryption);
  has Location => (is => 'ro', isa => Str);

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
               'Location' => {
                               'type' => 'Str'
                             },
               'FieldLevelEncryption' => {
                                           'class' => 'Paws::CloudFront::FieldLevelEncryption',
                                           'type' => 'CloudFront_FieldLevelEncryption'
                                         }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag',
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFieldLevelEncryptionConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption configuration. For
example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryption => CloudFront_FieldLevelEncryption

Returned when you create a new field-level encryption configuration.



=head2 Location => Str

The fully qualified URI of the new configuration resource just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-config/EDFDVBD632BHDS5>.




=cut

