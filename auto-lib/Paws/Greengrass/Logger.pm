package Paws::Greengrass::Logger;
  use Moose;
  has Component => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Level => (is => 'ro', isa => 'Str');
  has Space => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Logger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Logger object:

  $service_obj->Method(Att1 => { Component => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Logger object:

  $result = $service_obj->Method(...);
  $result->Att1->Component

=head1 DESCRIPTION

Information about a logger

=head1 ATTRIBUTES


=head2 Component => Str

  The component that will be subject to logging.


=head2 Id => Str

  A descriptive or arbitrary ID for the logger. This value must be unique
within the logger definition version. Max length is 128 characters with
pattern ''[a-zA-Z0-9:_-]+''.


=head2 Level => Str

  The level of the logs.


=head2 Space => Int

  The amount of file space, in KB, to use if the local file system is
used for logging purposes.


=head2 Type => Str

  The type of log output which will be used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

