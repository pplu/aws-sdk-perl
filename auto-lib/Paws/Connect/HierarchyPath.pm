# Generated from default/object.tt
package Paws::Connect::HierarchyPath;
  use Moo;
  use Types::Standard qw//;
  use Paws::Connect::Types qw/Connect_HierarchyGroupSummary/;
  has LevelFive => (is => 'ro', isa => Connect_HierarchyGroupSummary);
  has LevelFour => (is => 'ro', isa => Connect_HierarchyGroupSummary);
  has LevelOne => (is => 'ro', isa => Connect_HierarchyGroupSummary);
  has LevelThree => (is => 'ro', isa => Connect_HierarchyGroupSummary);
  has LevelTwo => (is => 'ro', isa => Connect_HierarchyGroupSummary);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LevelOne' => {
                               'type' => 'Connect_HierarchyGroupSummary',
                               'class' => 'Paws::Connect::HierarchyGroupSummary'
                             },
               'LevelTwo' => {
                               'type' => 'Connect_HierarchyGroupSummary',
                               'class' => 'Paws::Connect::HierarchyGroupSummary'
                             },
               'LevelThree' => {
                                 'class' => 'Paws::Connect::HierarchyGroupSummary',
                                 'type' => 'Connect_HierarchyGroupSummary'
                               },
               'LevelFive' => {
                                'class' => 'Paws::Connect::HierarchyGroupSummary',
                                'type' => 'Connect_HierarchyGroupSummary'
                              },
               'LevelFour' => {
                                'type' => 'Connect_HierarchyGroupSummary',
                                'class' => 'Paws::Connect::HierarchyGroupSummary'
                              }
             }
}
;
    return $Params_map;
  }


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

Contains information about the levels of a hierarchy group.

=head1 ATTRIBUTES


=head2 LevelFive => Connect_HierarchyGroupSummary

  Information about level five.


=head2 LevelFour => Connect_HierarchyGroupSummary

  Information about level four.


=head2 LevelOne => Connect_HierarchyGroupSummary

  Information about level one.


=head2 LevelThree => Connect_HierarchyGroupSummary

  Information about level three.


=head2 LevelTwo => Connect_HierarchyGroupSummary

  Information about level two.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

