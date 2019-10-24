# Generated from json/callresult_class.tt

package Paws::EMR::AddInstanceFleetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw//;
  has ClusterId => (is => 'ro', isa => Str);
  has InstanceFleetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceFleetId' => {
                                      'type' => 'Str'
                                    },
               'ClusterId' => {
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

Paws::EMR::AddInstanceFleetOutput

=head1 ATTRIBUTES


=head2 ClusterId => Str

The unique identifier of the cluster.


=head2 InstanceFleetId => Str

The unique identifier of the instance fleet.


=head2 _request_id => Str


=cut

1;