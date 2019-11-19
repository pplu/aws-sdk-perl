# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::ListEntitiesDetectionV2JobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ComprehendMedical::Types qw/ComprehendMedical_ComprehendMedicalAsyncJobProperties/;
  has ComprehendMedicalAsyncJobPropertiesList => (is => 'ro', isa => ArrayRef[ComprehendMedical_ComprehendMedicalAsyncJobProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ComprehendMedicalAsyncJobPropertiesList' => {
                                                              'type' => 'ArrayRef[ComprehendMedical_ComprehendMedicalAsyncJobProperties]',
                                                              'class' => 'Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties'
                                                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::ListEntitiesDetectionV2JobsResponse

=head1 ATTRIBUTES


=head2 ComprehendMedicalAsyncJobPropertiesList => ArrayRef[ComprehendMedical_ComprehendMedicalAsyncJobProperties]

A list containing the properties of each job returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;