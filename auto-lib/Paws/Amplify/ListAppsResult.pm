
package Paws::Amplify::ListAppsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_App/;
  has Apps => (is => 'ro', isa => ArrayRef[Amplify_App], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Apps' => {
                           'class' => 'Paws::Amplify::App',
                           'type' => 'ArrayRef[Amplify_App]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Apps' => 'apps'
                     },
  'IsRequired' => {
                    'Apps' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListAppsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Apps => ArrayRef[Amplify_App]

List of Amplify Apps.


=head2 NextToken => Str

Pagination token. Set to null to start listing Apps from start. If
non-null pagination token is returned in a result, then pass its value
in here to list more projects.


=head2 _request_id => Str


=cut

