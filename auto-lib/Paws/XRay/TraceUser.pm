package Paws::XRay::TraceUser;
  use Moose;
  has ServiceIds => (is => 'ro', isa => 'ArrayRef[Paws::XRay::ServiceId]');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::TraceUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::TraceUser object:

  $service_obj->Method(Att1 => { ServiceIds => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::TraceUser object:

  $result = $service_obj->Method(...);
  $result->Att1->ServiceIds

=head1 DESCRIPTION

Information about a user recorded in segment documents.

=head1 ATTRIBUTES


=head2 ServiceIds => ArrayRef[L<Paws::XRay::ServiceId>]

  Services that the user's request hit.


=head2 UserName => Str

  The user's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

