
package Paws::EC2::DescribeHostsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Host/;
  has Hosts => (is => 'ro', isa => ArrayRef[EC2_Host]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Hosts' => {
                            'class' => 'Paws::EC2::Host',
                            'type' => 'ArrayRef[EC2_Host]'
                          }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Hosts' => 'hostSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostsResult

=head1 ATTRIBUTES


=head2 Hosts => ArrayRef[EC2_Host]

Information about the Dedicated Hosts.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

