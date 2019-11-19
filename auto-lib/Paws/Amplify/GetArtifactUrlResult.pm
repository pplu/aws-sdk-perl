
package Paws::Amplify::GetArtifactUrlResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has ArtifactId => (is => 'ro', isa => Str, required => 1);
  has ArtifactUrl => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ArtifactId' => {
                                 'type' => 'Str'
                               },
               'ArtifactUrl' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ArtifactId' => 1,
                    'ArtifactUrl' => 1
                  },
  'NameInRequest' => {
                       'ArtifactId' => 'artifactId',
                       'ArtifactUrl' => 'artifactUrl'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetArtifactUrlResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactId => Str

Unique Id for a artifact.


=head2 B<REQUIRED> ArtifactUrl => Str

Presigned url for the artifact.


=head2 _request_id => Str


=cut

