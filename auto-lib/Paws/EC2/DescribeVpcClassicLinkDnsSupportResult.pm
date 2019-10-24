
package Paws::EC2::DescribeVpcClassicLinkDnsSupportResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ClassicLinkDnsSupport/;
  has NextToken => (is => 'ro', isa => Str);
  has Vpcs => (is => 'ro', isa => ArrayRef[EC2_ClassicLinkDnsSupport]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Vpcs' => {
                           'class' => 'Paws::EC2::ClassicLinkDnsSupport',
                           'type' => 'ArrayRef[EC2_ClassicLinkDnsSupport]'
                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Vpcs' => 'vpcs',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcClassicLinkDnsSupportResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Vpcs => ArrayRef[EC2_ClassicLinkDnsSupport]

Information about the ClassicLink DNS support status of the VPCs.


=head2 _request_id => Str


=cut

