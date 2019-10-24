# Generated from default/object.tt
package Paws::IoT1ClickProjects::PlacementDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_PlacementAttributeMap/;
  has Attributes => (is => 'ro', isa => IoT1ClickProjects_PlacementAttributeMap, required => 1);
  has CreatedDate => (is => 'ro', isa => Str, required => 1);
  has PlacementName => (is => 'ro', isa => Str, required => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1);
  has UpdatedDate => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlacementName' => {
                                    'type' => 'Str'
                                  },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Attributes' => {
                                 'class' => 'Paws::IoT1ClickProjects::PlacementAttributeMap',
                                 'type' => 'IoT1ClickProjects_PlacementAttributeMap'
                               },
               'UpdatedDate' => {
                                  'type' => 'Str'
                                },
               'ProjectName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PlacementName' => 'placementName',
                       'CreatedDate' => 'createdDate',
                       'Attributes' => 'attributes',
                       'UpdatedDate' => 'updatedDate',
                       'ProjectName' => 'projectName'
                     },
  'IsRequired' => {
                    'PlacementName' => 1,
                    'CreatedDate' => 1,
                    'Attributes' => 1,
                    'UpdatedDate' => 1,
                    'ProjectName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::PlacementDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickProjects::PlacementDescription object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., UpdatedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickProjects::PlacementDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

An object describing a project's placement.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => IoT1ClickProjects_PlacementAttributeMap

  The user-defined attributes associated with the placement.


=head2 B<REQUIRED> CreatedDate => Str

  The date when the placement was initially created, in UNIX epoch time
format.


=head2 B<REQUIRED> PlacementName => Str

  The name of the placement.


=head2 B<REQUIRED> ProjectName => Str

  The name of the project containing the placement.


=head2 B<REQUIRED> UpdatedDate => Str

  The date when the placement was last updated, in UNIX epoch time
format. If the placement was not updated, then C<createdDate> and
C<updatedDate> are the same.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

