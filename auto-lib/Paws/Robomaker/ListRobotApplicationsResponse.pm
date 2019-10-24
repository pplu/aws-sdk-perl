
package Paws::Robomaker::ListRobotApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RobotApplicationSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has RobotApplicationSummaries => (is => 'ro', isa => ArrayRef[Robomaker_RobotApplicationSummary]);

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
               'RobotApplicationSummaries' => {
                                                'class' => 'Paws::Robomaker::RobotApplicationSummary',
                                                'type' => 'ArrayRef[Robomaker_RobotApplicationSummary]'
                                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'RobotApplicationSummaries' => 'robotApplicationSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListRobotApplicationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRobotApplications>
request. When the results of a C<ListRobotApplications> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 RobotApplicationSummaries => ArrayRef[Robomaker_RobotApplicationSummary]

A list of robot application summaries that meet the criteria of the
request.


=head2 _request_id => Str


=cut

