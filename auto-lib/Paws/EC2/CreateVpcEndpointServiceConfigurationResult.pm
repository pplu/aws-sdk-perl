
package Paws::EC2::CreateVpcEndpointServiceConfigurationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ServiceConfiguration/;
  has ClientToken => (is => 'ro', isa => Str);
  has ServiceConfiguration => (is => 'ro', isa => EC2_ServiceConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ServiceConfiguration' => 'serviceConfiguration',
                       'ClientToken' => 'clientToken'
                     },
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServiceConfiguration' => {
                                           'class' => 'Paws::EC2::ServiceConfiguration',
                                           'type' => 'EC2_ServiceConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpointServiceConfigurationResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.


=head2 ServiceConfiguration => EC2_ServiceConfiguration

Information about the service configuration.


=head2 _request_id => Str


=cut

