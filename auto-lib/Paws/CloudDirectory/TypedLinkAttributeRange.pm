package Paws::CloudDirectory::TypedLinkAttributeRange;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has Range => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValueRange', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedLinkAttributeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedLinkAttributeRange object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., Range => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedLinkAttributeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Identifies the range of attributes that are used by a specified filter.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The unique name of the typed link attribute.


=head2 B<REQUIRED> Range => L<Paws::CloudDirectory::TypedAttributeValueRange>

  The range of attribute values that are being selected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

