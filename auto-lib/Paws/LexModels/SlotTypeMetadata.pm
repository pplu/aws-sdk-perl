package Paws::LexModels::SlotTypeMetadata;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDate', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::SlotTypeMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::SlotTypeMetadata object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::SlotTypeMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Provides information about a slot type..

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date that the slot type was created.


=head2 Description => Str

  A description of the slot type.


=head2 LastUpdatedDate => Str

  The date that the slot type was updated. When you create a resource,
the creation date and last updated date are the same.


=head2 Name => Str

  The name of the slot type.


=head2 Version => Str

  The version of the slot type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

