package Paws::Pinpoint::UpdateAttributesRequest;
  use Moose;
  has Blacklist => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateAttributesRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::UpdateAttributesRequest object:

  $service_obj->Method(Att1 => { Blacklist => $value, ..., Blacklist => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::UpdateAttributesRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Blacklist

=head1 DESCRIPTION

Update attributes request

=head1 ATTRIBUTES


=head2 Blacklist => ArrayRef[Str|Undef]

  The GLOB wildcard for removing the attributes in the application



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

