
package Paws::EC2::DescribeClientVpnRoutesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ClientVpnRoute/;
  has NextToken => (is => 'ro', isa => Str);
  has Routes => (is => 'ro', isa => ArrayRef[EC2_ClientVpnRoute]);

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
               'Routes' => {
                             'class' => 'Paws::EC2::ClientVpnRoute',
                             'type' => 'ArrayRef[EC2_ClientVpnRoute]'
                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Routes' => 'routes'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClientVpnRoutesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Routes => ArrayRef[EC2_ClientVpnRoute]

Information about the Client VPN endpoint routes.


=head2 _request_id => Str


=cut

