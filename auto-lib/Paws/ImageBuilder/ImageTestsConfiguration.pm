package Paws::ImageBuilder::ImageTestsConfiguration;
  use Moose;
  has ImageTestsEnabled => (is => 'ro', isa => 'Bool', request_name => 'imageTestsEnabled', traits => ['NameInRequest']);
  has TimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'timeoutMinutes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImageTestsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ImageTestsConfiguration object:

  $service_obj->Method(Att1 => { ImageTestsEnabled => $value, ..., TimeoutMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ImageTestsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageTestsEnabled

=head1 DESCRIPTION

Image tests configuration.

=head1 ATTRIBUTES


=head2 ImageTestsEnabled => Bool

  Defines if tests should be executed when building this image.


=head2 TimeoutMinutes => Int

  The maximum time in minutes that tests are permitted to run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

