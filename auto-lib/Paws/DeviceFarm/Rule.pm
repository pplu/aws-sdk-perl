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

The supported operators for each attribute are provided in the
following list.

=over

=item APPIUM_VERSION

The Appium version for the test.

I<Supported operators>: C<CONTAINS>

=item ARN

The Amazon Resource Name (ARN) of the device. For example,
"arn:aws:devicefarm:us-west-2::device:12345Example".

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item AVAILABILITY

The current availability of the device. Valid values are "AVAILABLE",
"HIGHLY_AVAILABLE", "BUSY", or "TEMPORARY_NOT_AVAILABLE".

I<Supported operators>: C<EQUALS>

=item FLEET_TYPE

The fleet type. Valid values are "PUBLIC" or "PRIVATE".

I<Supported operators>: C<EQUALS>

=item FORM_FACTOR

The device form factor. Valid values are "PHONE" or "TABLET".

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item INSTANCE_ARN

The Amazon Resource Name (ARN) of the device instance.

I<Supported operators>: C<IN>, C<NOT_IN>

=item INSTANCE_LABELS

The label of the device instance.

I<Supported operators>: C<CONTAINS>

=item MANUFACTURER

The device manufacturer. For example, "Apple".

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item MODEL

The device model, such as "Apple iPad Air 2" or "Google Pixel".

I<Supported operators>: C<CONTAINS>, C<EQUALS>, C<IN>, C<NOT_IN>

=item OS_VERSION

The operating system version. For example, "10.3.2".

I<Supported operators>: C<EQUALS>, C<GREATER_THAN>,
C<GREATER_THAN_OR_EQUALS>, C<IN>, C<LESS_THAN>, C<LESS_THAN_OR_EQUALS>,
C<NOT_IN>

=item PLATFORM

The device platform. Valid values are "ANDROID" or "IOS".

I<Supported operators>: C<EQUALS>, C<IN>, C<NOT_IN>

=item REMOTE_ACCESS_ENABLED

Whether the device is enabled for remote access. Valid values are
"TRUE" or "FALSE".

I<Supported operators>: C<EQUALS>

=item REMOTE_DEBUG_ENABLED

Whether the device is enabled for remote debugging. Valid values are
"TRUE" or "FALSE".

I<Supported operators>: C<EQUALS>

=back



=head2 Operator => Str

  Specifies how Device Farm compares the rule's attribute to the value.
For the operators that are supported by each attribute, see the
attribute descriptions.


=head2 Value => Str

  The rule's value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

