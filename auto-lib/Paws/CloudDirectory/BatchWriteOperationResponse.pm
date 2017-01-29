package Paws::CloudDirectory::BatchWriteOperationResponse;
  use Moose;
  has AddFacetToObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAddFacetToObjectResponse');
  has AttachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchAttachObjectResponse');
  has CreateObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchCreateObjectResponse');
  has DeleteObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDeleteObjectResponse');
  has DetachObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchDetachObjectResponse');
  has RemoveFacetFromObject => (is => 'ro', isa => 'Paws::CloudDirectory::BatchRemoveFacetFromObjectResponse');
  has UpdateObjectAttributes => (is => 'ro', isa => 'Paws::CloudDirectory::BatchUpdateObjectAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchWriteOperationResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchWriteOperationResponse object:

  $service_obj->Method(Att1 => { AddFacetToObject => $value, ..., UpdateObjectAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchWriteOperationResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->AddFacetToObject

=head1 DESCRIPTION

Represents the output of a BatchWrite response operation.

=head1 ATTRIBUTES


=head2 AddFacetToObject => L<Paws::CloudDirectory::BatchAddFacetToObjectResponse>

  Result of an add facet to object batch operation.


=head2 AttachObject => L<Paws::CloudDirectory::BatchAttachObjectResponse>

  Attaches an object to a Directory.


=head2 CreateObject => L<Paws::CloudDirectory::BatchCreateObjectResponse>

  Creates an object in a Directory.


=head2 DeleteObject => L<Paws::CloudDirectory::BatchDeleteObjectResponse>

  Deletes an object in a Directory.


=head2 DetachObject => L<Paws::CloudDirectory::BatchDetachObjectResponse>

  Detaches an object from a Directory.


=head2 RemoveFacetFromObject => L<Paws::CloudDirectory::BatchRemoveFacetFromObjectResponse>

  Result of a batch remove facet from object operation.


=head2 UpdateObjectAttributes => L<Paws::CloudDirectory::BatchUpdateObjectAttributesResponse>

  Updates a given objectE<rsquo>s attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

