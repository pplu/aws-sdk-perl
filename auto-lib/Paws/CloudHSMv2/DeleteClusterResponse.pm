# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::DeleteClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_Cluster/;
  has Cluster => (is => 'ro', isa => CloudHSMv2_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'class' => 'Paws::CloudHSMv2::Cluster',
                              'type' => 'CloudHSMv2_Cluster'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DeleteClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => CloudHSMv2_Cluster

Information about the cluster that was deleted.


=head2 _request_id => Str


=cut

1;