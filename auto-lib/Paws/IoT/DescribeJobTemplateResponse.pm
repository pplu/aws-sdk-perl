
package Paws::IoT::DescribeJobTemplateResponse;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', traits => ['NameInRequest'], request_name => 'abortConfig');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateArn');
  has JobTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateId');
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobTemplateResponse

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>




=head2 CreatedAt => Str

The time, in seconds since the epoch, when the job template was
created.


=head2 Description => Str

A description of the job template.


=head2 Document => Str

The job document.


=head2 DocumentSource => Str

An S3 link to the job document.


=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>




=head2 JobTemplateArn => Str

The ARN of the job template.


=head2 JobTemplateId => Str

The unique identifier of the job template.


=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>




=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>




=head2 _request_id => Str


=cut

