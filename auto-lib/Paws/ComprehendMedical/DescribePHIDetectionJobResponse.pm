# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::DescribePHIDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ComprehendMedical::Types qw/ComprehendMedical_ComprehendMedicalAsyncJobProperties/;
  has ComprehendMedicalAsyncJobProperties => (is => 'ro', isa => ComprehendMedical_ComprehendMedicalAsyncJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ComprehendMedicalAsyncJobProperties' => {
                                                          'type' => 'ComprehendMedical_ComprehendMedicalAsyncJobProperties',
                                                          'class' => 'Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties'
                                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DescribePHIDetectionJobResponse

=head1 ATTRIBUTES


=head2 ComprehendMedicalAsyncJobProperties => ComprehendMedical_ComprehendMedicalAsyncJobProperties

An object that contains the properties associated with a detection job.


=head2 _request_id => Str


=cut

1;