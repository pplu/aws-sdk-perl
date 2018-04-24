
package Paws::MediaConvert::CreateJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has JobTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplate');
  has Queue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queue');
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role');
  has Settings => (is => 'ro', isa => 'Paws::MediaConvert::JobSettings', traits => ['NameInRequest'], request_name => 'settings');
  has UserMetadata => (is => 'ro', isa => 'Paws::MediaConvert::MapOf__string', traits => ['NameInRequest'], request_name => 'userMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateJob - Arguments for method CreateJob on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the 
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

As an example:

  $service_obj->CreateJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotency token for CreateJob operation.



=head2 JobTemplate => Str

When you create a job, you can either specify a job template or specify
the transcoding settings individually



=head2 Queue => Str

Optional. When you create a job, you can specify a queue to send it to.
If you don't specify, the job will go to the default queue. For more
about queues, see the User Guide topic at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.



=head2 Role => Str

Required. The IAM role you use for creating this job. For details about
permissions, see the User Guide topic at the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.



=head2 Settings => L<Paws::MediaConvert::JobSettings>





=head2 UserMetadata => L<Paws::MediaConvert::MapOf__string>

User-defined metadata that you want to associate with an MediaConvert
job. You specify metadata in key/value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

