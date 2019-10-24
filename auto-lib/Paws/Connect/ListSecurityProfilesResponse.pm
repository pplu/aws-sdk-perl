
package Paws::Connect::ListSecurityProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_SecurityProfileSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has SecurityProfileSummaryList => (is => 'ro', isa => ArrayRef[Connect_SecurityProfileSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SecurityProfileSummaryList' => {
                                                 'class' => 'Paws::Connect::SecurityProfileSummary',
                                                 'type' => 'ArrayRef[Connect_SecurityProfileSummary]'
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

Paws::Connect::ListSecurityProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 SecurityProfileSummaryList => ArrayRef[Connect_SecurityProfileSummary]

An array of C<SecurityProfileSummary> objects.


=head2 _request_id => Str


=cut

