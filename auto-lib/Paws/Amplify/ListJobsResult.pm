
package Paws::Amplify::ListJobsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_JobSummary/;
  has JobSummaries => (is => 'ro', isa => ArrayRef[Amplify_JobSummary], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JobSummaries' => {
                                   'class' => 'Paws::Amplify::JobSummary',
                                   'type' => 'ArrayRef[Amplify_JobSummary]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'JobSummaries' => 'jobSummaries',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'JobSummaries' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListJobsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummaries => ArrayRef[Amplify_JobSummary]

Result structure for list job result request.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

