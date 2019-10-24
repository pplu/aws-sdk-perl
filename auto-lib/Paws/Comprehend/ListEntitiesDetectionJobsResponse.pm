# Generated from json/callresult_class.tt

package Paws::Comprehend::ListEntitiesDetectionJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_EntitiesDetectionJobProperties/;
  has EntitiesDetectionJobPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_EntitiesDetectionJobProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EntitiesDetectionJobPropertiesList' => {
                                                         'class' => 'Paws::Comprehend::EntitiesDetectionJobProperties',
                                                         'type' => 'ArrayRef[Comprehend_EntitiesDetectionJobProperties]'
                                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEntitiesDetectionJobsResponse

=head1 ATTRIBUTES


=head2 EntitiesDetectionJobPropertiesList => ArrayRef[Comprehend_EntitiesDetectionJobProperties]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;