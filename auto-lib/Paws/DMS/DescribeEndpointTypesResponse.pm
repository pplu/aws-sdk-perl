# Generated from json/callresult_class.tt

package Paws::DMS::DescribeEndpointTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_SupportedEndpointType/;
  has Marker => (is => 'ro', isa => Str);
  has SupportedEndpointTypes => (is => 'ro', isa => ArrayRef[DMS_SupportedEndpointType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SupportedEndpointTypes' => {
                                             'class' => 'Paws::DMS::SupportedEndpointType',
                                             'type' => 'ArrayRef[DMS_SupportedEndpointType]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEndpointTypesResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 SupportedEndpointTypes => ArrayRef[DMS_SupportedEndpointType]

The type of endpoints that are supported.


=head2 _request_id => Str


=cut

1;