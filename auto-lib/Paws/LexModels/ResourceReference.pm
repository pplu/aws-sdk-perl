package Paws::LexModels::ResourceReference;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::ResourceReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::ResourceReference object:

  $service_obj->Method(Att1 => { Name => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::ResourceReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes the resource that refers to the resource that you are
attempting to delete. This object is returned as part of the
C<ResourceInUseException> exception.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the resource that is using the resource that you are trying
to delete.


=head2 Version => Str

  The version of the resource that is using the resource that you are
trying to delete.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

