# Generated from json/callresult_class.tt

package Paws::DAX::DescribeClustersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Cluster/;
  has Clusters => (is => 'ro', isa => ArrayRef[DAX_Cluster]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Clusters' => {
                               'class' => 'Paws::DAX::Cluster',
                               'type' => 'ArrayRef[DAX_Cluster]'
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

Paws::DAX::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[DAX_Cluster]

The descriptions of your DAX clusters, in response to a
I<DescribeClusters> request.


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

1;