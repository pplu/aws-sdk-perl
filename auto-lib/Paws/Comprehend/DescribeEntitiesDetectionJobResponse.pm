# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeEntitiesDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_EntitiesDetectionJobProperties/;
  has EntitiesDetectionJobProperties => (is => 'ro', isa => Comprehend_EntitiesDetectionJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EntitiesDetectionJobProperties' => {
                                                     'type' => 'Comprehend_EntitiesDetectionJobProperties',
                                                     'class' => 'Paws::Comprehend::EntitiesDetectionJobProperties'
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

Paws::Comprehend::DescribeEntitiesDetectionJobResponse

=head1 ATTRIBUTES


=head2 EntitiesDetectionJobProperties => Comprehend_EntitiesDetectionJobProperties

An object that contains the properties associated with an entities
detection job.


=head2 _request_id => Str


=cut

1;