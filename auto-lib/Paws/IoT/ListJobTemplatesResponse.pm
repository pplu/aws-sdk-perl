
package Paws::IoT::ListJobTemplatesResponse;
  use Moose;
  has JobTemplates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::JobTemplateSummary]', traits => ['NameInRequest'], request_name => 'jobTemplates');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobTemplatesResponse

=head1 ATTRIBUTES


=head2 JobTemplates => ArrayRef[L<Paws::IoT::JobTemplateSummary>]

A list of objects that contain information about the job templates.


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 _request_id => Str


=cut

