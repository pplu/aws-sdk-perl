
package Paws::Inspector::CreateExclusionsPreviewResponse;
  use Moose;
  has PreviewToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'previewToken' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateExclusionsPreviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PreviewToken => Str

Specifies the unique identifier of the requested exclusions preview.
You can use the unique identifier to retrieve the exclusions preview
when running the GetExclusionsPreview API.


=head2 _request_id => Str


=cut

1;