# Generated from default/object.tt
package Paws::Connect::HierarchyStructure;
  use Moo;
  use Types::Standard qw//;
  use Paws::Connect::Types qw/Connect_HierarchyLevel/;
  has LevelFive => (is => 'ro', isa => Connect_HierarchyLevel);
  has LevelFour => (is => 'ro', isa => Connect_HierarchyLevel);
  has LevelOne => (is => 'ro', isa => Connect_HierarchyLevel);
  has LevelThree => (is => 'ro', isa => Connect_HierarchyLevel);
  has LevelTwo => (is => 'ro', isa => Connect_HierarchyLevel);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LevelThree' => {
                                 'class' => 'Paws::Connect::HierarchyLevel',
                                 'type' => 'Connect_HierarchyLevel'
                               },
               'LevelOne' => {
                               'type' => 'Connect_HierarchyLevel',
                               'class' => 'Paws::Connect::HierarchyLevel'
                             },
               'LevelTwo' => {
                               'class' => 'Paws::Connect::HierarchyLevel',
                               'type' => 'Connect_HierarchyLevel'
                             },
               'LevelFive' => {
                                'type' => 'Connect_HierarchyLevel',
                                'class' => 'Paws::Connect::HierarchyLevel'
                              },
               'LevelFour' => {
                                'class' => 'Paws::Connect::HierarchyLevel',
                                'type' => 'Connect_HierarchyLevel'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HierarchyStructure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HierarchyStructure object:

  $service_obj->Method(Att1 => { LevelFive => $value, ..., LevelTwo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HierarchyStructure object:

  $result = $service_obj->Method(...);
  $result->Att1->LevelFive

=head1 DESCRIPTION

Contains information about a hierarchy structure.

=head1 ATTRIBUTES


=head2 LevelFive => Connect_HierarchyLevel

  Information about level five.


=head2 LevelFour => Connect_HierarchyLevel

  Information about level four.


=head2 LevelOne => Connect_HierarchyLevel

  Information about level one.


=head2 LevelThree => Connect_HierarchyLevel

  Information about level three.


=head2 LevelTwo => Connect_HierarchyLevel

  Information about level two.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

