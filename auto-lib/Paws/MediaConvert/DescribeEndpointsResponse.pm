
package Paws::MediaConvert::DescribeEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_Endpoint/;
  has Endpoints => (is => 'ro', isa => ArrayRef[MediaConvert_Endpoint]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Endpoints' => {
                                'class' => 'Paws::MediaConvert::Endpoint',
                                'type' => 'ArrayRef[MediaConvert_Endpoint]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Endpoints' => 'endpoints',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[MediaConvert_Endpoint]

List of endpoints


=head2 NextToken => Str

Use this string to request the next batch of endpoints.


=head2 _request_id => Str


=cut

