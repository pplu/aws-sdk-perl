
package Paws::Inspector::DescribeAssessmentTemplatesResponse;
  use Moose;
  has AssessmentTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::AssessmentTemplate]', traits => ['Unwrapped'], xmlname => 'assessmentTemplates' , required => 1);
  has FailedItems => (is => 'ro', isa => 'HashRef[Paws::Inspector::FailedItemDetails]', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeAssessmentTemplatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplates => ArrayRef[L<Paws::Inspector::AssessmentTemplate>]

Information about the assessment template(s).



=head2 B<REQUIRED> FailedItems => HashRef[L<Paws::Inspector::FailedItemDetails>]

Assessment template details that cannot be described. An error code is
provided for each failed item.




=cut

1;