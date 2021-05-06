
package Paws::MediaConvert::UpdateJobTemplateResponse;
  use Moose;
  has JobTemplate => (is => 'ro', isa => 'Paws::MediaConvert::JobTemplate', traits => ['NameInRequest'], request_name => 'jobTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UpdateJobTemplateResponse

=head1 ATTRIBUTES


=head2 JobTemplate => L<Paws::MediaConvert::JobTemplate>

A job template is a pre-made set of encoding instructions that you can
use to quickly create a job.


=head2 _request_id => Str


=cut

