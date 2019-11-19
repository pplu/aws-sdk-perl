# Generated from callresult_class.tt

package Paws::SNS::ListEndpointsByPlatformApplicationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_Endpoint/;
  has Endpoints => (is => 'ro', isa => ArrayRef[SNS_Endpoint]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Endpoints' => {
                                'type' => 'ArrayRef[SNS_Endpoint]',
                                'class' => 'Paws::SNS::Endpoint'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListEndpointsByPlatformApplicationResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[SNS_Endpoint]

Endpoints returned for ListEndpointsByPlatformApplication action.


=head2 NextToken => Str

NextToken string is returned when calling
ListEndpointsByPlatformApplication action if additional records are
available after the first page results.


=head2 _request_id => Str


=cut

