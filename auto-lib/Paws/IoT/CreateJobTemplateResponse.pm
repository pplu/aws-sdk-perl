
package Paws::IoT::CreateJobTemplateResponse;
  use Moose;
  has JobTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateArn');
  has JobTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJobTemplateResponse

=head1 ATTRIBUTES


=head2 JobTemplateArn => Str

The ARN of the job template.


=head2 JobTemplateId => Str

The unique identifier of the job template.


=head2 _request_id => Str


=cut

