# Generated from json/callresult_class.tt

package Paws::DAX::RebootNodeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DAX::Types qw/DAX_Cluster/;
  has Cluster => (is => 'ro', isa => DAX_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'class' => 'Paws::DAX::Cluster',
                              'type' => 'DAX_Cluster'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::RebootNodeResponse

=head1 ATTRIBUTES


=head2 Cluster => DAX_Cluster

A description of the DAX cluster after a node has been rebooted.


=head2 _request_id => Str


=cut

1;