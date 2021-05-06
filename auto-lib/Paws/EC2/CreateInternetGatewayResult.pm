
package Paws::EC2::CreateInternetGatewayResult;
  use Moose;
  has InternetGateway => (is => 'ro', isa => 'Paws::EC2::InternetGateway', request_name => 'internetGateway', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInternetGatewayResult

=head1 ATTRIBUTES


=head2 InternetGateway => L<Paws::EC2::InternetGateway>

Information about the internet gateway.


=head2 _request_id => Str


=cut

