
package Paws::IoT::AssociateTargetsWithJobResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssociateTargetsWithJobResponse

=head1 ATTRIBUTES


=head2 Description => Str

A short text description of the job.


=head2 JobArn => Str

An ARN identifying the job.


=head2 JobId => Str

The unique identifier you assigned to this job when it was created.


=head2 _request_id => Str


=cut

