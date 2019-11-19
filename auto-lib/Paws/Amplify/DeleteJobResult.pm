
package Paws::Amplify::DeleteJobResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_JobSummary/;
  has JobSummary => (is => 'ro', isa => Amplify_JobSummary, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'JobSummary' => 'jobSummary'
                     },
  'IsRequired' => {
                    'JobSummary' => 1
                  },
  'types' => {
               'JobSummary' => {
                                 'type' => 'Amplify_JobSummary',
                                 'class' => 'Paws::Amplify::JobSummary'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummary => Amplify_JobSummary




=head2 _request_id => Str


=cut

