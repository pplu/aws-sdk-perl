
package Paws::MediaPackage::ListOriginEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackage::Types qw/MediaPackage_OriginEndpoint/;
  has NextToken => (is => 'ro', isa => Str);
  has OriginEndpoints => (is => 'ro', isa => ArrayRef[MediaPackage_OriginEndpoint]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OriginEndpoints' => {
                                      'class' => 'Paws::MediaPackage::OriginEndpoint',
                                      'type' => 'ArrayRef[MediaPackage_OriginEndpoint]'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'OriginEndpoints' => 'originEndpoints',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListOriginEndpointsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 OriginEndpoints => ArrayRef[MediaPackage_OriginEndpoint]

A list of OriginEndpoint records.


=head2 _request_id => Str


=cut

