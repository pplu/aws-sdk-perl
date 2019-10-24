
package Paws::Robomaker::ListRobotsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_Robot/;
  has NextToken => (is => 'ro', isa => Str);
  has Robots => (is => 'ro', isa => ArrayRef[Robomaker_Robot]);

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
               'Robots' => {
                             'class' => 'Paws::Robomaker::Robot',
                             'type' => 'ArrayRef[Robomaker_Robot]'
                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Robots' => 'robots'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListRobotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListRobots> request.
When the results of a C<ListRobot> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Robots => ArrayRef[Robomaker_Robot]

A list of robots that meet the criteria of the request.


=head2 _request_id => Str


=cut

