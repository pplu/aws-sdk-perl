
package Paws::DynamoDB::DescribeEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_Endpoint/;
  has Endpoints => (is => 'ro', isa => ArrayRef[DynamoDB_Endpoint], required => 1);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'Endpoints' => {
                                           'class' => 'Paws::DynamoDB::Endpoint',
                                           'type' => 'ArrayRef[DynamoDB_Endpoint]'
                                         }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[DynamoDB_Endpoint]

List of endpoints.


=head2 _request_id => Str


=cut

1;