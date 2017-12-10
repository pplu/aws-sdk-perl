package Paws::CloudFormation::Export;
  use Moose;
  has ExportingStackId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::Export

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::Export object:

  $service_obj->Method(Att1 => { ExportingStackId => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::Export object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportingStackId

=head1 DESCRIPTION

The C<Export> structure describes the exported output values for a
stack.

=head1 ATTRIBUTES


=head2 ExportingStackId => Str

  The stack that contains the exported output name and value.


=head2 Name => Str

  The name of exported output value. Use this name and the
C<Fn::ImportValue> function to import the associated value into other
stacks. The name is defined in the C<Export> field in the associated
stack's C<Outputs> section.


=head2 Value => Str

  The value of the exported output, such as a resource physical ID. This
value is defined in the C<Export> field in the associated stack's
C<Outputs> section.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

