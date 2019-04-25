package Paws::IoT::ThingDocument;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::Attributes', request_name => 'attributes', traits => ['NameInRequest']);
  has Connectivity => (is => 'ro', isa => 'Paws::IoT::ThingConnectivity', request_name => 'connectivity', traits => ['NameInRequest']);
  has Shadow => (is => 'ro', isa => 'Str', request_name => 'shadow', traits => ['NameInRequest']);
  has ThingGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'thingGroupNames', traits => ['NameInRequest']);
  has ThingId => (is => 'ro', isa => 'Str', request_name => 'thingId', traits => ['NameInRequest']);
  has ThingName => (is => 'ro', isa => 'Str', request_name => 'thingName', traits => ['NameInRequest']);
  has ThingTypeName => (is => 'ro', isa => 'Str', request_name => 'thingTypeName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingDocument object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ThingTypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The thing search index document.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT::Attributes>

  The attributes.


=head2 Connectivity => L<Paws::IoT::ThingConnectivity>

  Indicates whether or not the thing is connected to the AWS IoT service.


=head2 Shadow => Str

  The shadow.


=head2 ThingGroupNames => ArrayRef[Str|Undef]

  Thing group names.


=head2 ThingId => Str

  The thing ID.


=head2 ThingName => Str

  The thing name.


=head2 ThingTypeName => Str

  The thing type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

