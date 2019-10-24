# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_InstanceSnapshot/;
  has InstanceSnapshot => (is => 'ro', isa => Lightsail_InstanceSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceSnapshot' => {
                                       'class' => 'Paws::Lightsail::InstanceSnapshot',
                                       'type' => 'Lightsail_InstanceSnapshot'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InstanceSnapshot' => 'instanceSnapshot'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceSnapshotResult

=head1 ATTRIBUTES


=head2 InstanceSnapshot => Lightsail_InstanceSnapshot

An array of key-value pairs containing information about the results of
your get instance snapshot request.


=head2 _request_id => Str


=cut

1;