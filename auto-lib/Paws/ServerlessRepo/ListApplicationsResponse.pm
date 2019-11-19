
package Paws::ServerlessRepo::ListApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ApplicationSummary/;
  has Applications => (is => 'ro', isa => ArrayRef[ServerlessRepo_ApplicationSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Applications' => 'applications'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Applications' => {
                                   'class' => 'Paws::ServerlessRepo::ApplicationSummary',
                                   'type' => 'ArrayRef[ServerlessRepo_ApplicationSummary]'
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

Paws::ServerlessRepo::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[ServerlessRepo_ApplicationSummary]

An array of application summaries.


=head2 NextToken => Str

The token to request the next page of results.


=head2 _request_id => Str


=cut

