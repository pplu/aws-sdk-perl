
package Paws::EC2::CreateVpcEndpointResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpcEndpoint/;
  has ClientToken => (is => 'ro', isa => Str);
  has VpcEndpoint => (is => 'ro', isa => EC2_VpcEndpoint);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'VpcEndpoint' => 'vpcEndpoint'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'VpcEndpoint' => {
                                  'type' => 'EC2_VpcEndpoint',
                                  'class' => 'Paws::EC2::VpcEndpoint'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.


=head2 VpcEndpoint => EC2_VpcEndpoint

Information about the endpoint.


=head2 _request_id => Str


=cut

