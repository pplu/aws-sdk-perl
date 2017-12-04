package Paws::IoT::ImplicitDeny;
  use Moose;
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Policy]', request_name => 'policies', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ImplicitDeny

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ImplicitDeny object:

  $service_obj->Method(Att1 => { Policies => $value, ..., Policies => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ImplicitDeny object:

  $result = $service_obj->Method(...);
  $result->Att1->Policies

=head1 DESCRIPTION

Information that implicitly denies authorization. When policy doesn't
explicitly deny or allow an action on a resource it is considered an
implicit deny.

=head1 ATTRIBUTES


=head2 Policies => ArrayRef[L<Paws::IoT::Policy>]

  Policies that don't contain a matching allow or deny statement for the
specified action on the specified resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

