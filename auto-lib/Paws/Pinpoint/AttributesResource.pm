package Paws::Pinpoint::AttributesResource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AttributeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AttributesResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::AttributesResource object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., AttributeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::AttributesResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Attributes.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique ID for the application.


=head2 Attributes => ArrayRef[Str|Undef]

  The attributes for the application.


=head2 AttributeType => Str

  The attribute type for the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

