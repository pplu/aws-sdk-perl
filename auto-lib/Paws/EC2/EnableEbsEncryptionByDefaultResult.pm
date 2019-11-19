
package Paws::EC2::EnableEbsEncryptionByDefaultResult;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has EbsEncryptionByDefault => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EbsEncryptionByDefault' => {
                                             'type' => 'Bool'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EbsEncryptionByDefault' => 'ebsEncryptionByDefault'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableEbsEncryptionByDefaultResult

=head1 ATTRIBUTES


=head2 EbsEncryptionByDefault => Bool

The updated status of encryption by default.


=head2 _request_id => Str


=cut

