package Paws::MediaConvert::JobTemplate;
  use Moose;
  has AccelerationSettings => (is => 'ro', isa => 'Paws::MediaConvert::AccelerationSettings', request_name => 'accelerationSettings', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Category => (is => 'ro', isa => 'Str', request_name => 'category', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdated => (is => 'ro', isa => 'Str', request_name => 'lastUpdated', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Queue => (is => 'ro', isa => 'Str', request_name => 'queue', traits => ['NameInRequest']);
  has Settings => (is => 'ro', isa => 'Paws::MediaConvert::JobTemplateSettings', request_name => 'settings', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::JobTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::JobTemplate object:

  $service_obj->Method(Att1 => { AccelerationSettings => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::JobTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->AccelerationSettings

=head1 DESCRIPTION

A job template is a pre-made set of encoding instructions that you can
use to quickly create a job.

=head1 ATTRIBUTES


=head2 AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>

  Acceleration settings for job execution.


=head2 Arn => Str

  An identifier for this resource that is unique within all of AWS.


=head2 Category => Str

  An optional category you create to organize your job templates.


=head2 CreatedAt => Str

  The timestamp in epoch seconds for Job template creation.


=head2 Description => Str

  An optional description you create for each job template.


=head2 LastUpdated => Str

  The timestamp in epoch seconds when the Job template was last updated.


=head2 B<REQUIRED> Name => Str

  A name you create for each job template. Each name must be unique
within your account.


=head2 Queue => Str

  Optional. The queue that jobs created from this template are assigned
to. If you don't specify this, jobs will go to the default queue.


=head2 B<REQUIRED> Settings => L<Paws::MediaConvert::JobTemplateSettings>

  


=head2 Type => Str

  A job template can be of two types: system or custom. System or
built-in job templates can't be modified or deleted by the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

