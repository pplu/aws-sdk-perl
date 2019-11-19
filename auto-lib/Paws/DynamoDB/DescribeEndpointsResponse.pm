# Generated from json/callresult_class.tt

package Paws::DynamoDB::DescribeEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_Endpoint/;
  has Endpoints => (is => 'ro', isa => ArrayRef[DynamoDB_Endpoint], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Endpoints' => {
                                'type' => 'ArrayRef[DynamoDB_Endpoint]',
                                'class' => 'Paws::DynamoDB::Endpoint'
                              }
             },
  'IsRequired' => {
                    'Endpoints' => 1
                  }
}
;
    return $Params_map;
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