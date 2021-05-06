
package Paws::Inspector::DescribeAssessmentTemplatesResponse;
  use Moose;
  has AssessmentTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentTemplate]', traits => ['NameInRequest'], request_name => 'assessmentTemplates' , required => 1);
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTemplatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplates => ArrayRef[L<Paws::Inspector::AssessmentTemplate>]

Information about the assessment templates.


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Assessment template details that cannot be described. An error code is
provided for each failed item.


=head2 _request_id => Str


=cut

1;