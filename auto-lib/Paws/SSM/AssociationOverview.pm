package Paws::SSM::AssociationOverview;
  use Moose;
  has AssociationStatusAggregatedCount => (is => 'ro', isa => 'Paws::SSM::AssociationStatusAggregatedCount');
  has DetailedStatus => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationOverview

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationOverview object:

  $service_obj->Method(Att1 => { AssociationStatusAggregatedCount => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationOverview object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationStatusAggregatedCount

=head1 DESCRIPTION

Information about the association.

=head1 ATTRIBUTES


=head2 AssociationStatusAggregatedCount => L<Paws::SSM::AssociationStatusAggregatedCount>

  Returns the number of targets for the association status. For example,
if you created an association with two instances, and one of them was
successful, this would return the count of instances by status.


=head2 DetailedStatus => Str

  A detailed status of the association.


=head2 Status => Str

  The status of the association. Status can be: Pending, Success, or
Failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

