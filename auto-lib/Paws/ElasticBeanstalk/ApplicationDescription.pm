package Paws::ElasticBeanstalk::ApplicationDescription;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Str]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationDescription

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ApplicationDescription object:

  $service_obj->Method(Att1 => { ApplicationName => $value, ..., Versions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ApplicationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationName

=head1 ATTRIBUTES

=head2 ApplicationName => Str

  The name of the application.

=head2 ConfigurationTemplates => ArrayRef[Str]

  The names of the configuration templates associated with this
application.

=head2 DateCreated => Str

  The date when the application was created.

=head2 DateUpdated => Str

  The date when the application was last modified.

=head2 Description => Str

  User-defined description of the application.

=head2 Versions => ArrayRef[Str]

  The names of the versions for this application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

