
package Paws::MediaConvert::CreateJobTemplateResponse;
  use Moose;
  has JobTemplate => (is => 'ro', isa => 'Paws::MediaConvert::JobTemplate', traits => ['NameInRequest'], request_name => 'jobTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateJobTemplateResponse

=head1 ATTRIBUTES


=head2 JobTemplate => L<Paws::MediaConvert::JobTemplate>




=head2 _request_id => Str


=cut

