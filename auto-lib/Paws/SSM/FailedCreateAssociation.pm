package Paws::SSM::FailedCreateAssociation;
  use Moose;
  has Entry => (is => 'ro', isa => 'Paws::SSM::CreateAssociationBatchRequestEntry');
  has Fault => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::FailedCreateAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::FailedCreateAssociation object:

  $service_obj->Method(Att1 => { Entry => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::FailedCreateAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->Entry

=head1 DESCRIPTION

Describes a failed association.

=head1 ATTRIBUTES


=head2 Entry => L<Paws::SSM::CreateAssociationBatchRequestEntry>

  The association.


=head2 Fault => Str

  The source of the failure.


=head2 Message => Str

  A description of the failure.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

