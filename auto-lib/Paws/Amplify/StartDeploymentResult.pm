
package Paws::Amplify::StartDeploymentResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_JobSummary/;
  has JobSummary => (is => 'ro', isa => Amplify_JobSummary, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobSummary' => {
                                 'class' => 'Paws::Amplify::JobSummary',
                                 'type' => 'Amplify_JobSummary'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'JobSummary' => 'jobSummary'
                     },
  'IsRequired' => {
                    'JobSummary' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::StartDeploymentResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummary => Amplify_JobSummary

Summary for the Job.


=head2 _request_id => Str


=cut

