package Paws::CloudDirectory::BatchWriteOperation;
  use Moose;
  has AddFacetToObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAddFacetToObject');
  has AttachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachObject');
  has CreateObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchCreateObject');
  has DeleteObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDeleteObject');
  has DetachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachObject');
  has RemoveFacetFromObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchRemoveFacetFromObject');
  has UpdateObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchUpdateObjectAttributes');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchWriteOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchWriteOperation object:

  $service_obj->Method(Att1 => { AddFacetToObject => $value, ..., UpdateObjectAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchWriteOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->AddFacetToObject

=head1 DESCRIPTION

Represents the output of a BatchWrite operation.

=head1 ATTRIBUTES


=head2 AddFacetToObject => L<Paws::CloudDirectory::BatchAddFacetToObject>

  Batch operation adding a facet to an object.


=head2 AttachObject => L<Paws::CloudDirectory::BatchAttachObject>

  Attaches an object to a Directory.


=head2 CreateObject => L<Paws::CloudDirectory::BatchCreateObject>

  Creates an object.


=head2 DeleteObject => L<Paws::CloudDirectory::BatchDeleteObject>

  Deletes an object in a Directory.


=head2 DetachObject => L<Paws::CloudDirectory::BatchDetachObject>

  Detaches an object from a Directory.


=head2 RemoveFacetFromObject => L<Paws::CloudDirectory::BatchRemoveFacetFromObject>

  Batch operation removing a facet from an object.


=head2 UpdateObjectAttributes => L<Paws::CloudDirectory::BatchUpdateObjectAttributes>

  Update a given object's attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

