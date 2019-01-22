package Paws::AppStream::Application;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has IconURL => (is => 'ro', isa => 'Str');
  has LaunchParameters => (is => 'ro', isa => 'Str');
  has LaunchPath => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::AppStream::Metadata');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Application

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Application object:

  $service_obj->Method(Att1 => { DisplayName => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Application object:

  $result = $service_obj->Method(...);
  $result->Att1->DisplayName

=head1 DESCRIPTION

Describes an application in the application catalog.

=head1 ATTRIBUTES


=head2 DisplayName => Str

  The application name to display.


=head2 Enabled => Bool

  If there is a problem, the application can be disabled after image
creation.


=head2 IconURL => Str

  The URL for the application icon. This URL might be time-limited.


=head2 LaunchParameters => Str

  The arguments that are passed to the application at launch.


=head2 LaunchPath => Str

  The path to the application executable in the instance.


=head2 Metadata => L<Paws::AppStream::Metadata>

  Additional attributes that describe the application.


=head2 Name => Str

  The name of the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

