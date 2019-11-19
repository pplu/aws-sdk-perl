# Generated from json/callresult_class.tt

package Paws::Lightsail::GetInstanceSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_InstanceSnapshot/;
  has InstanceSnapshot => (is => 'ro', isa => Lightsail_InstanceSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InstanceSnapshot' => 'instanceSnapshot'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceSnapshot' => {
                                       'type' => 'Lightsail_InstanceSnapshot',
                                       'class' => 'Paws::Lightsail::InstanceSnapshot'
                                     }
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