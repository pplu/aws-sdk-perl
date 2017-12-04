package Paws::CloudDirectory::AttributeNameAndValue;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValue', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttributeNameAndValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::AttributeNameAndValue object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::AttributeNameAndValue object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Identifies the attribute name and value for a typed link.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

  The attribute name of the typed link.


=head2 B<REQUIRED> Value => L<Paws::CloudDirectory::TypedAttributeValue>

  The value for the typed link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

