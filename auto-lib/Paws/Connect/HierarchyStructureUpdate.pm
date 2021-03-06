# Generated by default/object.tt
package Paws::Connect::HierarchyStructureUpdate;
  use Moose;
  has LevelFive => (is => 'ro', isa => 'Paws::Connect::HierarchyLevelUpdate');
  has LevelFour => (is => 'ro', isa => 'Paws::Connect::HierarchyLevelUpdate');
  has LevelOne => (is => 'ro', isa => 'Paws::Connect::HierarchyLevelUpdate');
  has LevelThree => (is => 'ro', isa => 'Paws::Connect::HierarchyLevelUpdate');
  has LevelTwo => (is => 'ro', isa => 'Paws::Connect::HierarchyLevelUpdate');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HierarchyStructureUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HierarchyStructureUpdate object:

  $service_obj->Method(Att1 => { LevelFive => $value, ..., LevelTwo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HierarchyStructureUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->LevelFive

=head1 DESCRIPTION

Contains information about the level hierarchy to update.

=head1 ATTRIBUTES


=head2 LevelFive => L<Paws::Connect::HierarchyLevelUpdate>

The update for level five.


=head2 LevelFour => L<Paws::Connect::HierarchyLevelUpdate>

The update for level four.


=head2 LevelOne => L<Paws::Connect::HierarchyLevelUpdate>

The update for level one.


=head2 LevelThree => L<Paws::Connect::HierarchyLevelUpdate>

The update for level three.


=head2 LevelTwo => L<Paws::Connect::HierarchyLevelUpdate>

The update for level two.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

