package Paws::IoT::NonCompliantResource;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::IoT::StringMap', request_name => 'additionalInfo', traits => ['NameInRequest']);
  has ResourceIdentifier => (is => 'ro', isa => 'Paws::IoT::ResourceIdentifier', request_name => 'resourceIdentifier', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::NonCompliantResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::NonCompliantResource object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::NonCompliantResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

Information about the resource that was non-compliant with the audit
check.

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::IoT::StringMap>

  Additional information about the non-compliant resource.


=head2 ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>

  Information identifying the non-compliant resource.


=head2 ResourceType => Str

  The type of the non-compliant resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

