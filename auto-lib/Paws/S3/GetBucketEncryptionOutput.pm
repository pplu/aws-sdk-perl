
package Paws::S3::GetBucketEncryptionOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ServerSideEncryptionConfiguration/;
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => S3_ServerSideEncryptionConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'ServerSideEncryptionConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerSideEncryptionConfiguration' => {
                                                        'class' => 'Paws::S3::ServerSideEncryptionConfiguration',
                                                        'type' => 'S3_ServerSideEncryptionConfiguration'
                                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketEncryptionOutput

=head1 ATTRIBUTES


=head2 ServerSideEncryptionConfiguration => S3_ServerSideEncryptionConfiguration






=cut

