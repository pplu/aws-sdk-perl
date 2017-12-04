package Paws::CloudDirectory::ObjectAttributeRange;
  use Moose;
  has AttributeKey => (is => 'ro', isa => 'Paws::CloudDirectory::AttributeKey');
  has Range => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValueRange');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ObjectAttributeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::ObjectAttributeRange object:

  $service_obj->Method(Att1 => { AttributeKey => $value, ..., Range => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::ObjectAttributeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeKey

=head1 DESCRIPTION

A range of attributes.

=head1 ATTRIBUTES


=head2 AttributeKey => L<Paws::CloudDirectory::AttributeKey>

  The key of the attribute that the attribute range covers.


=head2 Range => L<Paws::CloudDirectory::TypedAttributeValueRange>

  The range of attribute values being selected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

