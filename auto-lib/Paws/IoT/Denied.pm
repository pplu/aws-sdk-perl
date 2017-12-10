package Paws::IoT::Denied;
  use Moose;
  has ExplicitDeny => (is => 'ro', isa => 'Paws::IoT::ExplicitDeny', request_name => 'explicitDeny', traits => ['NameInRequest']);
  has ImplicitDeny => (is => 'ro', isa => 'Paws::IoT::ImplicitDeny', request_name => 'implicitDeny', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Denied

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Denied object:

  $service_obj->Method(Att1 => { ExplicitDeny => $value, ..., ImplicitDeny => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Denied object:

  $result = $service_obj->Method(...);
  $result->Att1->ExplicitDeny

=head1 DESCRIPTION

Contains information that denied the authorization.

=head1 ATTRIBUTES


=head2 ExplicitDeny => L<Paws::IoT::ExplicitDeny>

  Information that explicitly denies the authorization.


=head2 ImplicitDeny => L<Paws::IoT::ImplicitDeny>

  Information that implicitly denies the authorization. When a policy
doesn't explicitly deny or allow an action on a resource it is
considered an implicit deny.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

