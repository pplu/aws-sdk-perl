package Paws::Connect::HierarchyGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has HierarchyPath => (is => 'ro', isa => 'Paws::Connect::HierarchyPath');
  has Id => (is => 'ro', isa => 'Str');
  has LevelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
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

A C<HierarchyGroup> object that contains information about a hierarchy
group in your Amazon Connect instance.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the hierarchy group.


=head2 HierarchyPath => L<Paws::Connect::HierarchyPath>

  A C<HierarchyPath> object that contains information about the levels in
the hierarchy group.


=head2 Id => Str

  The identifier for the hierarchy group.


=head2 LevelId => Str

  The identifier for the level in the hierarchy group.


=head2 Name => Str

  The name of the hierarchy group in your instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

