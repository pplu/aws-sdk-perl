package Paws::IoTEvents::Attribute;
  use Moose;
  has JsonPath => (is => 'ro', isa => 'Str', request_name => 'jsonPath', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::Attribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::Attribute object:

  $service_obj->Method(Att1 => { JsonPath => $value, ..., JsonPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::Attribute object:

  $result = $service_obj->Method(...);
  $result->Att1->JsonPath

=head1 DESCRIPTION

The attributes from the JSON payload that are made available by the
input. Inputs are derived from messages sent to the AWS IoT Events
system using C<BatchPutMessage>. Each such message contains a JSON
payload, and those attributes (and their paired values) specified here
are available for use in the C<condition> expressions used by
detectors.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JsonPath => Str

  An expression that specifies an attribute-value pair in a JSON
structure. Use this to specify an attribute from the JSON payload that
is made available by the input. Inputs are derived from messages sent
to the AWS IoT Events system (C<BatchPutMessage>). Each such message
contains a JSON payload, and the attribute (and its paired value)
specified here are available for use in the C<"condition"> expressions
used by detectors.

Syntax: C<E<lt>field-nameE<gt>.E<lt>field-nameE<gt>...>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

