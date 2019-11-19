
package Paws::ServerlessRepo::ListApplicationDependenciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_ApplicationDependencySummary/;
  has Dependencies => (is => 'ro', isa => ArrayRef[ServerlessRepo_ApplicationDependencySummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Dependencies' => 'dependencies'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Dependencies' => {
                                   'class' => 'Paws::ServerlessRepo::ApplicationDependencySummary',
                                   'type' => 'ArrayRef[ServerlessRepo_ApplicationDependencySummary]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationDependenciesResponse

=head1 ATTRIBUTES


=head2 Dependencies => ArrayRef[ServerlessRepo_ApplicationDependencySummary]

An array of application summaries nested in the application.


=head2 NextToken => Str

The token to request the next page of results.


=head2 _request_id => Str


=cut

