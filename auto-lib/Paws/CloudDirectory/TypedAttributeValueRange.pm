package Paws::CloudDirectory::TypedAttributeValueRange;
  use Moose;
  has EndMode => (is => 'ro', isa => 'Str', required => 1);
  has EndValue => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValue');
  has StartMode => (is => 'ro', isa => 'Str', required => 1);
  has StartValue => (is => 'ro', isa => 'Paws::CloudDirectory::TypedAttributeValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::TypedAttributeValueRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedAttributeValueRange object:

  $service_obj->Method(Att1 => { EndMode => $value, ..., StartValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedAttributeValueRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndMode

=head1 DESCRIPTION

A range of attribute values. For more information, see Range Filters
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_range_filters.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndMode => Str

  The inclusive or exclusive range end.


=head2 EndValue => L<Paws::CloudDirectory::TypedAttributeValue>

  The attribute value to terminate the range at.


=head2 B<REQUIRED> StartMode => Str

  The inclusive or exclusive range start.


=head2 StartValue => L<Paws::CloudDirectory::TypedAttributeValue>

  The value to start the range at.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

