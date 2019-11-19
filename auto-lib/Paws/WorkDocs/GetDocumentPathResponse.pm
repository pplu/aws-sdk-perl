
package Paws::WorkDocs::GetDocumentPathResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_ResourcePath/;
  has Path => (is => 'ro', isa => WorkDocs_ResourcePath);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Path' => {
                           'type' => 'WorkDocs_ResourcePath',
                           'class' => 'Paws::WorkDocs::ResourcePath'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentPathResponse

=head1 ATTRIBUTES


=head2 Path => WorkDocs_ResourcePath

The path information.


=head2 _request_id => Str


=cut

