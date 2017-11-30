
package Paws::MediaConvert::ListJobTemplatesResponse;
  use Moose;
  has JobTemplates => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::JobTemplate]', traits => ['NameInRequest'], request_name => 'jobTemplates');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListJobTemplatesResponse

=head1 ATTRIBUTES


=head2 JobTemplates => ArrayRef[L<Paws::MediaConvert::JobTemplate>]

List of Job templates.


=head2 NextToken => Str

Use this string to request the next batch of job templates.


=head2 _request_id => Str


=cut

