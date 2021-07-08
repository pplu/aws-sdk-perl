package Paws::EC2::DeregisterInstanceTagAttributeRequest;
  use Moose;
  has IncludeAllTagsOfInstance => (is => 'ro', isa => 'Bool');
  has InstanceTagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'InstanceTagKey', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeregisterInstanceTagAttributeRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DeregisterInstanceTagAttributeRequest object:

  $service_obj->Method(Att1 => { IncludeAllTagsOfInstance => $value, ..., InstanceTagKeys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DeregisterInstanceTagAttributeRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->IncludeAllTagsOfInstance

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 IncludeAllTagsOfInstance => Bool

Indicates whether to deregister all tag keys in the current Region.
Specify C<false> to deregister all tag keys.


=head2 InstanceTagKeys => ArrayRef[Str|Undef]

Information about the tag keys to deregister.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
