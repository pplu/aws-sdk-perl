
package Paws::CloudFront::ListFieldLevelEncryptionProfilesResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionProfileList/;
  has FieldLevelEncryptionProfileList => (is => 'ro', isa => CloudFront_FieldLevelEncryptionProfileList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryptionProfileList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FieldLevelEncryptionProfileList' => {
                                                      'type' => 'CloudFront_FieldLevelEncryptionProfileList',
                                                      'class' => 'Paws::CloudFront::FieldLevelEncryptionProfileList'
                                                    },
               '_request_id' => {
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

Paws::CloudFront::ListFieldLevelEncryptionProfilesResult

=head1 ATTRIBUTES


=head2 FieldLevelEncryptionProfileList => CloudFront_FieldLevelEncryptionProfileList

Returns a list of the field-level encryption profiles that have been
created in CloudFront for this account.




=cut

