
package Paws::EC2::CreateEgressOnlyInternetGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_EgressOnlyInternetGateway/;
  has ClientToken => (is => 'ro', isa => Str);
  has EgressOnlyInternetGateway => (is => 'ro', isa => EC2_EgressOnlyInternetGateway);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EgressOnlyInternetGateway' => {
                                                'class' => 'Paws::EC2::EgressOnlyInternetGateway',
                                                'type' => 'EC2_EgressOnlyInternetGateway'
                                              },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EgressOnlyInternetGateway' => 'egressOnlyInternetGateway',
                       'ClientToken' => 'clientToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateEgressOnlyInternetGatewayResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 EgressOnlyInternetGateway => EC2_EgressOnlyInternetGateway

Information about the egress-only internet gateway.


=head2 _request_id => Str


=cut

