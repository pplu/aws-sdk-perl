# Generated by default/object.tt
package Paws::AppRunner::ImageConfiguration;
  use Moose;
  has Port => (is => 'ro', isa => 'Str');
  has RuntimeEnvironmentVariables => (is => 'ro', isa => 'Paws::AppRunner::RuntimeEnvironmentVariables');
  has StartCommand => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ImageConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppRunner::ImageConfiguration object:

  $service_obj->Method(Att1 => { Port => $value, ..., StartCommand => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppRunner::ImageConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

Describes the configuration that AWS App Runner uses to run an App
Runner service using an image pulled from a source image repository.

=head1 ATTRIBUTES


=head2 Port => Str

The port that your application listens to in the container.

Default: C<8080>


=head2 RuntimeEnvironmentVariables => L<Paws::AppRunner::RuntimeEnvironmentVariables>

Environment variables that are available to your running App Runner
service. An array of key-value pairs. Keys with a prefix of
C<AWSAPPRUNNER> are reserved for system use and aren't valid.


=head2 StartCommand => Str

An optional command that App Runner runs to start the application in
the source image. If specified, this command overrides the Docker
imageE<rsquo>s default start command.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

