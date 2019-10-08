
package Paws::EC2::GetEbsDefaultKmsKeyIdResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has KmsKeyId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KmsKeyId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'KmsKeyId' => 'kmsKeyId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetEbsDefaultKmsKeyIdResult

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of the default CMK for encryption by
default.


=head2 _request_id => Str


=cut

