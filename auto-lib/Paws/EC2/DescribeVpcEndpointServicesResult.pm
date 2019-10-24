
package Paws::EC2::DescribeVpcEndpointServicesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_ServiceDetail/;
  has NextToken => (is => 'ro', isa => Str);
  has ServiceDetails => (is => 'ro', isa => ArrayRef[EC2_ServiceDetail]);
  has ServiceNames => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceNames' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServiceDetails' => {
                                     'class' => 'Paws::EC2::ServiceDetail',
                                     'type' => 'ArrayRef[EC2_ServiceDetail]'
                                   }
             },
  'NameInRequest' => {
                       'ServiceNames' => 'serviceNameSet',
                       'NextToken' => 'nextToken',
                       'ServiceDetails' => 'serviceDetailSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointServicesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 ServiceDetails => ArrayRef[EC2_ServiceDetail]

Information about the service.


=head2 ServiceNames => ArrayRef[Str|Undef]

A list of supported services.


=head2 _request_id => Str


=cut

