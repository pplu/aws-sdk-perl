# Generated from json/callresult_class.tt

package Paws::Pricing::DescribeServicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Pricing::Types qw/Pricing_Service/;
  has FormatVersion => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has Services => (is => 'ro', isa => ArrayRef[Pricing_Service]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Services' => {
                               'class' => 'Paws::Pricing::Service',
                               'type' => 'ArrayRef[Pricing_Service]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FormatVersion' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Pricing::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 FormatVersion => Str

The format version of the response. For example, C<aws_v1>.


=head2 NextToken => Str

The pagination token for the next set of retreivable results.


=head2 Services => ArrayRef[Pricing_Service]

The service metadata for the service or services in the response.


=head2 _request_id => Str


=cut

1;