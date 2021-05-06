
package Paws::Inspector::ListAssessmentTemplatesResponse;
  use Moose;
  has AssessmentTemplateArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'assessmentTemplateArns' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAssessmentTemplatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArns => ArrayRef[Str|Undef]

A list of ARNs that specifies the assessment templates returned by the
action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;