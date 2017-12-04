package Paws::IoT::ThingTypeMetadata;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has Deprecated => (is => 'ro', isa => 'Bool', request_name => 'deprecated', traits => ['NameInRequest']);
  has DeprecationDate => (is => 'ro', isa => 'Str', request_name => 'deprecationDate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingTypeMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingTypeMetadata object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., DeprecationDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingTypeMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

The ThingTypeMetadata contains additional information about the thing
type including: creation date and time, a value indicating whether the
thing type is deprecated, and a date and time when time was deprecated.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date and time when the thing type was created.


=head2 Deprecated => Bool

  Whether the thing type is deprecated. If B<true>, no new things could
be associated with this type.


=head2 DeprecationDate => Str

  The date and time when the thing type was deprecated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

