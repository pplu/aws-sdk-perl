
package Paws::EC2::DescribeByoipCidrsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ByoipCidr/;
  has ByoipCidrs => (is => 'ro', isa => ArrayRef[EC2_ByoipCidr]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ByoipCidrs' => 'byoipCidrSet'
                     },
  'types' => {
               'ByoipCidrs' => {
                                 'class' => 'Paws::EC2::ByoipCidr',
                                 'type' => 'ArrayRef[EC2_ByoipCidr]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::EC2::DescribeByoipCidrsResult

=head1 ATTRIBUTES


=head2 ByoipCidrs => ArrayRef[EC2_ByoipCidr]

Information about your address ranges.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

