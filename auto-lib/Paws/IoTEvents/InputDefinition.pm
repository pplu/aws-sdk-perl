package Paws::IoTEvents::InputDefinition;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::Attribute]', request_name => 'attributes', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::InputDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::InputDefinition object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Attributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::InputDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The definition of the input.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::IoTEvents::Attribute>]

  The attributes from the JSON payload that are made available by the
input. Inputs are derived from messages sent to the AWS IoT Events
system using C<BatchPutMessage>. Each such message contains a JSON
payload, and those attributes (and their paired values) specified here
is available for use in the C<condition> expressions used by detectors
that monitor this input.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

