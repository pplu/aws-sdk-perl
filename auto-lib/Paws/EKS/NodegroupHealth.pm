package Paws::EKS::NodegroupHealth;
  use Moose;
  has Issues => (is => 'ro', isa => 'ArrayRef[Paws::EKS::Issue]', request_name => 'issues', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::NodegroupHealth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::NodegroupHealth object:

  $service_obj->Method(Att1 => { Issues => $value, ..., Issues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::NodegroupHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->Issues

=head1 DESCRIPTION

An object representing the health status of the node group.

=head1 ATTRIBUTES


=head2 Issues => ArrayRef[L<Paws::EKS::Issue>]

  Any issues that are associated with the node group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

