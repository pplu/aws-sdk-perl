package Paws::DeviceFarm::Rule;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', request_name => 'attribute', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Str', request_name => 'operator', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Rule object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

Represents a condition for a device pool.

=head1 ATTRIBUTES


=head2 Attribute => Str

  The rule's stringified attribute. For example, specify the value as
C<"\"abc\"">.

Allowed values include:

=over

=item *

ARN: The ARN.

=item *

FORM_FACTOR: The form factor (for example, phone or tablet).

=item *

MANUFACTURER: The manufacturer.

=item *

PLATFORM: The platform (for example, Android or iOS).

=item *

REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access.

=item *

APPIUM_VERSION: The Appium version for the test.

=back



=head2 Operator => Str

  The rule's operator.

=over

=item *

EQUALS: The equals operator.

=item *

GREATER_THAN: The greater-than operator.

=item *

IN: The in operator.

=item *

LESS_THAN: The less-than operator.

=item *

NOT_IN: The not-in operator.

=item *

CONTAINS: The contains operator.

=back



=head2 Value => Str

  The rule's value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

