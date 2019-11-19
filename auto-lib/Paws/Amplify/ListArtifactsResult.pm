
package Paws::Amplify::ListArtifactsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_Artifact/;
  has Artifacts => (is => 'ro', isa => ArrayRef[Amplify_Artifact], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Artifacts' => {
                                'class' => 'Paws::Amplify::Artifact',
                                'type' => 'ArrayRef[Amplify_Artifact]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Artifacts' => 'artifacts',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'Artifacts' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListArtifactsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Artifacts => ArrayRef[Amplify_Artifact]

List of artifacts.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

