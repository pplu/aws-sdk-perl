package Paws::Connect::HierarchyPath;
  use Moose;
  has LevelFive => (is => 'ro', isa => 'Paws::Connect::HierarchyGroupSummary');
  has LevelFour => (is => 'ro', isa => 'Paws::Connect::HierarchyGroupSummary');
  has LevelOne => (is => 'ro', isa => 'Paws::Connect::HierarchyGroupSummary');
  has LevelThree => (is => 'ro', isa => 'Paws::Connect::HierarchyGroupSummary');
  has LevelTwo => (is => 'ro', isa => 'Paws::Connect::HierarchyGroupSummary');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HierarchyPath

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HierarchyPath object:

  $service_obj->Method(Att1 => { LevelFive => $value, ..., LevelTwo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HierarchyPath object:

  $result = $service_obj->Method(...);
  $result->Att1->LevelFive

=head1 DESCRIPTION

A C<HierarchyPath> object that contains information about the levels of
the hierarchy group.

=head1 ATTRIBUTES


=head2 LevelFive => L<Paws::Connect::HierarchyGroupSummary>

  A C<HierarchyGroupSummary> object that contains information about the
level of the hierarchy group, including ARN, Id, and Name.


=head2 LevelFour => L<Paws::Connect::HierarchyGroupSummary>

  A C<HierarchyGroupSummary> object that contains information about the
level of the hierarchy group, including ARN, Id, and Name.


=head2 LevelOne => L<Paws::Connect::HierarchyGroupSummary>

  A C<HierarchyGroupSummary> object that contains information about the
level of the hierarchy group, including ARN, Id, and Name.


=head2 LevelThree => L<Paws::Connect::HierarchyGroupSummary>

  A C<HierarchyGroupSummary> object that contains information about the
level of the hierarchy group, including ARN, Id, and Name.


=head2 LevelTwo => L<Paws::Connect::HierarchyGroupSummary>

  A C<HierarchyGroupSummary> object that contains information about the
level of the hierarchy group, including ARN, Id, and Name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

