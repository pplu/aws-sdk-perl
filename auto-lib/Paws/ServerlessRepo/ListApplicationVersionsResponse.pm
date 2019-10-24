
package Paws::ServerlessRepo::ListApplicationVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_VersionSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Versions => (is => 'ro', isa => ArrayRef[ServerlessRepo_VersionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Versions' => {
                               'class' => 'Paws::ServerlessRepo::VersionSummary',
                               'type' => 'ArrayRef[ServerlessRepo_VersionSummary]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Versions' => 'versions',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to request the next page of results.


=head2 Versions => ArrayRef[ServerlessRepo_VersionSummary]

An array of version summaries for the application.


=head2 _request_id => Str


=cut

