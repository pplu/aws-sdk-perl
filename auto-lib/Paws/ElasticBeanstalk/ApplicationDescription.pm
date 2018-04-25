package Paws::ElasticBeanstalk::ApplicationDescription;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ResourceLifecycleConfig => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ApplicationDescription object:

  $service_obj->Method(Att1 => { ApplicationArn => $value, ..., Versions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ApplicationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationArn

=head1 DESCRIPTION

Describes the properties of an application.

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

  The Amazon Resource Name (ARN) of the application.


=head2 ApplicationName => Str

  The name of the application.


=head2 ConfigurationTemplates => ArrayRef[Str|Undef]

  The names of the configuration templates associated with this
application.


=head2 DateCreated => Str

  The date when the application was created.


=head2 DateUpdated => Str

  The date when the application was last modified.


=head2 Description => Str

  User-defined description of the application.


=head2 ResourceLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig>

  The lifecycle settings for the application.


=head2 Versions => ArrayRef[Str|Undef]

  The names of the versions for this application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

