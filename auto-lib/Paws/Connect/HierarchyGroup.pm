# Generated from default/object.tt
package Paws::Connect::HierarchyGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_HierarchyPath/;
  has Arn => (is => 'ro', isa => Str);
  has HierarchyPath => (is => 'ro', isa => Connect_HierarchyPath);
  has Id => (is => 'ro', isa => Str);
  has LevelId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'HierarchyPath' => {
                                    'type' => 'Connect_HierarchyPath',
                                    'class' => 'Paws::Connect::HierarchyPath'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'LevelId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HierarchyGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HierarchyGroup object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HierarchyGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a hierarchy group.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the hierarchy group.


=head2 HierarchyPath => Connect_HierarchyPath

  Information about the levels in the hierarchy group.


=head2 Id => Str

  The identifier of the hierarchy group.


=head2 LevelId => Str

  The identifier of the level in the hierarchy group.


=head2 Name => Str

  The name of the hierarchy group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

