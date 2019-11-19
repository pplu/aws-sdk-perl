
package Paws::Pinpoint::ActivitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Pinpoint::Types qw/Pinpoint_ActivityResponse/;
  has Item => (is => 'ro', isa => ArrayRef[Pinpoint_ActivityResponse], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Item' => 1
                  },
  'types' => {
               'Item' => {
                           'class' => 'Paws::Pinpoint::ActivityResponse',
                           'type' => 'ArrayRef[Pinpoint_ActivityResponse]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::Pinpoint::ActivitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[Pinpoint_ActivityResponse]

An array of responses, one for each activity that was performed by the
campaign.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

