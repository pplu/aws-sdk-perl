
package Paws::EC2::DescribeVpcClassicLinkResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpcClassicLink/;
  has Vpcs => (is => 'ro', isa => ArrayRef[EC2_VpcClassicLink]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Vpcs' => {
                           'type' => 'ArrayRef[EC2_VpcClassicLink]',
                           'class' => 'Paws::EC2::VpcClassicLink'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Vpcs' => 'vpcSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcClassicLinkResult

=head1 ATTRIBUTES


=head2 Vpcs => ArrayRef[EC2_VpcClassicLink]

The ClassicLink status of one or more VPCs.


=head2 _request_id => Str


=cut

