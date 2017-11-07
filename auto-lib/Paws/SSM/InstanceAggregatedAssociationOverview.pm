package Paws::SSM::InstanceAggregatedAssociationOverview;
  use Moose;
  has DetailedStatus => (is => 'ro', isa => 'Str');
  has InstanceAssociationStatusAggregatedCount => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationStatusAggregatedCount');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceAggregatedAssociationOverview

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceAggregatedAssociationOverview object:

  $service_obj->Method(Att1 => { DetailedStatus => $value, ..., InstanceAssociationStatusAggregatedCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceAggregatedAssociationOverview object:

  $result = $service_obj->Method(...);
  $result->Att1->DetailedStatus

=head1 DESCRIPTION

Status information about the aggregated associations.

=head1 ATTRIBUTES


=head2 DetailedStatus => Str

  Detailed status information about the aggregated associations.


=head2 InstanceAssociationStatusAggregatedCount => L<Paws::SSM::InstanceAssociationStatusAggregatedCount>

  The number of associations for the instance(s).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

