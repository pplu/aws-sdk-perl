
package Paws::EC2::CreateInternetGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_InternetGateway/;
  has InternetGateway => (is => 'ro', isa => EC2_InternetGateway);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InternetGateway' => {
                                      'class' => 'Paws::EC2::InternetGateway',
                                      'type' => 'EC2_InternetGateway'
                                    }
             },
  'NameInRequest' => {
                       'InternetGateway' => 'internetGateway'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInternetGatewayResult

=head1 ATTRIBUTES


=head2 InternetGateway => EC2_InternetGateway

Information about the internet gateway.


=head2 _request_id => Str


=cut

