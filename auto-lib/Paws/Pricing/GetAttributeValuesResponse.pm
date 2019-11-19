# Generated from json/callresult_class.tt

package Paws::Pricing::GetAttributeValuesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Pricing::Types qw/Pricing_AttributeValue/;
  has AttributeValues => (is => 'ro', isa => ArrayRef[Pricing_AttributeValue]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AttributeValues' => {
                                      'class' => 'Paws::Pricing::AttributeValue',
                                      'type' => 'ArrayRef[Pricing_AttributeValue]'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetAttributeValuesResponse

=head1 ATTRIBUTES


=head2 AttributeValues => ArrayRef[Pricing_AttributeValue]

The list of values for an attribute. For example, C<Throughput
Optimized HDD> and C<Provisioned IOPS> are two available values for the
C<AmazonEC2> C<volumeType>.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;