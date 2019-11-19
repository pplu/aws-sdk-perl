
package Paws::CloudFront::ListFieldLevelEncryptionConfigsResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionList/;
  has FieldLevelEncryptionList => (is => 'ro', isa => CloudFront_FieldLevelEncryptionList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryptionList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FieldLevelEncryptionList' => {
                                               'class' => 'Paws::CloudFront::FieldLevelEncryptionList',
                                               'type' => 'CloudFront_FieldLevelEncryptionList'
                                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListFieldLevelEncryptionConfigsResult

=head1 ATTRIBUTES


=head2 FieldLevelEncryptionList => CloudFront_FieldLevelEncryptionList

Returns a list of all field-level encryption configurations that have
been created in CloudFront for this account.




=cut

