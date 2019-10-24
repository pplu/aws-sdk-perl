
package Paws::EC2::DescribeKeyPairsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_KeyPairInfo/;
  has KeyPairs => (is => 'ro', isa => ArrayRef[EC2_KeyPairInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyPairs' => {
                               'class' => 'Paws::EC2::KeyPairInfo',
                               'type' => 'ArrayRef[EC2_KeyPairInfo]'
                             }
             },
  'NameInRequest' => {
                       'KeyPairs' => 'keySet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeKeyPairsResult

=head1 ATTRIBUTES


=head2 KeyPairs => ArrayRef[EC2_KeyPairInfo]

Information about the key pairs.


=head2 _request_id => Str


=cut

