
package Paws::Robomaker::ListFleetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_Fleet/;
  has FleetDetails => (is => 'ro', isa => ArrayRef[Robomaker_Fleet]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetDetails' => {
                                   'class' => 'Paws::Robomaker::Fleet',
                                   'type' => 'ArrayRef[Robomaker_Fleet]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'FleetDetails' => 'fleetDetails'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListFleetsResponse

=head1 ATTRIBUTES


=head2 FleetDetails => ArrayRef[Robomaker_Fleet]

A list of fleet details meeting the request criteria.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListDeploymentJobs>
request. When the results of a C<ListFleets> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

