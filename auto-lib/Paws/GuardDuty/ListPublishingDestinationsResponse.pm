
package Paws::GuardDuty::ListPublishingDestinationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_Destination/;
  has Destinations => (is => 'ro', isa => ArrayRef[GuardDuty_Destination], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Destinations' => {
                                   'class' => 'Paws::GuardDuty::Destination',
                                   'type' => 'ArrayRef[GuardDuty_Destination]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Destinations' => 'destinations',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'Destinations' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListPublishingDestinationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destinations => ArrayRef[GuardDuty_Destination]

A C<Destinations> obect that includes information about each publishing
destination returned.


=head2 NextToken => Str

A token to use for paginating results returned in the repsonse. Set the
value of this parameter to null for the first request to a list action.
For subsequent calls, use the C<NextToken> value returned from the
previous request to continue listing results after the first page.


=head2 _request_id => Str


=cut

