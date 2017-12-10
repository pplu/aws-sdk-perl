package Paws::WorkDocs::Principal;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::PermissionInfo]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::Principal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::Principal object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::Principal object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Describes a resource.

=head1 ATTRIBUTES


=head2 Id => Str

  The ID of the resource.


=head2 Roles => ArrayRef[L<Paws::WorkDocs::PermissionInfo>]

  The permission information for the resource.


=head2 Type => Str

  The type of resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

