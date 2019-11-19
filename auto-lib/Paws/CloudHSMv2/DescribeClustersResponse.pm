# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::DescribeClustersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_Cluster/;
  has Clusters => (is => 'ro', isa => ArrayRef[CloudHSMv2_Cluster]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Clusters' => {
                               'class' => 'Paws::CloudHSMv2::Cluster',
                               'type' => 'ArrayRef[CloudHSMv2_Cluster]'
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

Paws::CloudHSMv2::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[CloudHSMv2_Cluster]

A list of clusters.


=head2 NextToken => Str

An opaque string that indicates that the response contains only a
subset of clusters. Use this value in a subsequent C<DescribeClusters>
request to get more clusters.


=head2 _request_id => Str


=cut

1;