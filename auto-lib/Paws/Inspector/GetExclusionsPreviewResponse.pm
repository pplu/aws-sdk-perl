
package Paws::Inspector::GetExclusionsPreviewResponse;
  use Moose;
  has ExclusionPreviews => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::ExclusionPreview]', traits => ['NameInRequest'], request_name => 'exclusionPreviews' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PreviewStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'previewStatus' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetExclusionsPreviewResponse

=head1 ATTRIBUTES


=head2 ExclusionPreviews => ArrayRef[L<Paws::Inspector::ExclusionPreview>]

Information about the exclusions included in the preview.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameters is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 B<REQUIRED> PreviewStatus => Str

Specifies the status of the request to generate an exclusions preview.

Valid values are: C<"WORK_IN_PROGRESS">, C<"COMPLETED">
=head2 _request_id => Str


=cut

1;