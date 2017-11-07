package Paws::SSM::InstanceAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceAssociation object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

One or more association documents on the instance.

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The association ID.


=head2 AssociationVersion => Str

  Version information for the association on the instance.


=head2 Content => Str

  The content of the association document for the instance(s).


=head2 InstanceId => Str

  The instance ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

