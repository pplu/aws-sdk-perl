package Paws::ELB::PolicyAttributeTypeDescription;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeType => (is => 'ro', isa => 'Str');
  has Cardinality => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::PolicyAttributeTypeDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::PolicyAttributeTypeDescription object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::PolicyAttributeTypeDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Information about a policy attribute type.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The name of the attribute.


=head2 AttributeType => Str

  The type of the attribute. For example, C<Boolean> or C<Integer>.


=head2 Cardinality => Str

  The cardinality of the attribute.

Valid values:

=over

=item *

ONE(1) : Single value required

=item *

ZERO_OR_ONE(0..1) : Up to one value is allowed

=item *

ZERO_OR_MORE(0..*) : Optional. Multiple values are allowed

=item *

ONE_OR_MORE(1..*0) : Required. Multiple values are allowed

=back



=head2 DefaultValue => Str

  The default value of the attribute, if applicable.


=head2 Description => Str

  A description of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

