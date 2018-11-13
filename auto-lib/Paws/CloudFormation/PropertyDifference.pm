package Paws::CloudFormation::PropertyDifference;
  use Moose;
  has ActualValue => (is => 'ro', isa => 'Str', required => 1);
  has DifferenceType => (is => 'ro', isa => 'Str', required => 1);
  has ExpectedValue => (is => 'ro', isa => 'Str', required => 1);
  has PropertyPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::PropertyDifference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::PropertyDifference object:

  $service_obj->Method(Att1 => { ActualValue => $value, ..., PropertyPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::PropertyDifference object:

  $result = $service_obj->Method(...);
  $result->Att1->ActualValue

=head1 DESCRIPTION

Information about a resource property whose actual value differs from
its expected value, as defined in the stack template and any values
specified as template parameters. These will be present only for
resources whose C<StackResourceDriftStatus> is C<MODIFIED>. For more
information, see Detecting Unregulated Configuration Changes to Stacks
and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActualValue => Str

  The actual property value of the resource property.


=head2 B<REQUIRED> DifferenceType => Str

  The type of property difference.

=over

=item *

C<ADD>: A value has been added to a resource property that is an array
or list data type.

=item *

C<REMOVE>: The property has been removed from the current resource
configuration.

=item *

C<NOT_EQUAL>: The current property value differs from its expected
value (as defined in the stack template and any values specified as
template parameters).

=back



=head2 B<REQUIRED> ExpectedValue => Str

  The expected property value of the resource property, as defined in the
stack template and any values specified as template parameters.


=head2 B<REQUIRED> PropertyPath => Str

  The fully-qualified path to the resource property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

