package Paws::WorkSpaces::ModificationState;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModificationState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::ModificationState object:

  $service_obj->Method(Att1 => { Resource => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::ModificationState object:

  $result = $service_obj->Method(...);
  $result->Att1->Resource

=head1 DESCRIPTION

Describes a WorkSpace modification.

=head1 ATTRIBUTES


=head2 Resource => Str

  The resource.


=head2 State => Str

  The modification state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

