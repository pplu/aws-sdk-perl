
package Paws::IoT::CreateJob;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentParameters => (is => 'ro', isa => 'Paws::IoT::JobDocumentParameters', traits => ['NameInRequest'], request_name => 'documentParameters');
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has Targets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targets', required => 1);
  has TargetSelection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSelection');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJob - Arguments for method CreateJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the 
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

As an example:

  $service_obj->CreateJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

A short text description of the job.



=head2 Document => Str

The job document.



=head2 DocumentParameters => L<Paws::IoT::JobDocumentParameters>

Parameters for the job document.



=head2 DocumentSource => Str

An S3 link to the job document.



=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>

Allows you to create a staged rollout of the job.



=head2 B<REQUIRED> JobId => Str

A job identifier which must be unique for your AWS account. We
recommend using a UUID. Alpha-numeric characters, "-" and "_" are valid
for use here.



=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>

Configuration information for pre-signed S3 URLs.



=head2 B<REQUIRED> Targets => ArrayRef[Str|Undef]

A list of things and thing groups to which the job should be sent.



=head2 TargetSelection => Str

Specifies whether the job will continue to run (CONTINUOUS), or will be
complete after all those things specified as targets have completed the
job (SNAPSHOT). If continuous, the job may also be run on a thing when
a change is detected in a target. For example, a job will run on a
thing when the thing is added to a target group, even after the job was
completed by all things originally in the group.

Valid values are: C<"CONTINUOUS">, C<"SNAPSHOT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

