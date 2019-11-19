
package Paws::Pinpoint::GetAppsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Pinpoint::Types qw/Pinpoint_ApplicationResponse/;
  has Item => (is => 'ro', isa => ArrayRef[Pinpoint_ApplicationResponse]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Item' => {
                           'class' => 'Paws::Pinpoint::ApplicationResponse',
                           'type' => 'ArrayRef[Pinpoint_ApplicationResponse]'
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

Paws::Pinpoint::GetAppsResponse

=head1 ATTRIBUTES


=head2 Item => ArrayRef[Pinpoint_ApplicationResponse]

A list of applications


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

