package Paws::ElasticBeanstalk::EventDescription;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has EventDate => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EventDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::EventDescription object:

  $service_obj->Method(Att1 => { ApplicationName => $value, ..., VersionLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::EventDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationName

=head1 DESCRIPTION

Describes an event.

=head1 ATTRIBUTES


=head2 ApplicationName => Str

  The application associated with the event.


=head2 EnvironmentName => Str

  The name of the environment associated with this event.


=head2 EventDate => Str

  The date when the event occurred.


=head2 Message => Str

  The event message.


=head2 PlatformArn => Str

  The ARN of the platform.


=head2 RequestId => Str

  The web service request ID for the activity of this event.


=head2 Severity => Str

  The severity level of this event.


=head2 TemplateName => Str

  The name of the configuration associated with this event.


=head2 VersionLabel => Str

  The release label for the application version associated with this
event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

