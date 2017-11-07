package Paws::CloudFormation::ResourceTargetDefinition;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequiresRecreation => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ResourceTargetDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ResourceTargetDefinition object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., RequiresRecreation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ResourceTargetDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

The field that AWS CloudFormation will change, such as the name of a
resource's property, and whether the resource will be recreated.

=head1 ATTRIBUTES


=head2 Attribute => Str

  Indicates which resource attribute is triggering this update, such as a
change in the resource attribute's C<Metadata>, C<Properties>, or
C<Tags>.


=head2 Name => Str

  If the C<Attribute> value is C<Properties>, the name of the property.
For all other attributes, the value is null.


=head2 RequiresRecreation => Str

  If the C<Attribute> value is C<Properties>, indicates whether a change
to this property causes the resource to be recreated. The value can be
C<Never>, C<Always>, or C<Conditionally>. To determine the conditions
for a C<Conditionally> recreation, see the update behavior for that
property
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the AWS CloudFormation User Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

