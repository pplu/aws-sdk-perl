# Generated from default/object.tt
package Paws::CloudDirectory::BatchWriteOperation;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchAttachTypedLink CloudDirectory_BatchCreateObject CloudDirectory_BatchCreateIndex CloudDirectory_BatchDetachPolicy CloudDirectory_BatchUpdateObjectAttributes CloudDirectory_BatchAttachObject CloudDirectory_BatchDetachTypedLink CloudDirectory_BatchDetachFromIndex CloudDirectory_BatchDetachObject CloudDirectory_BatchAddFacetToObject CloudDirectory_BatchRemoveFacetFromObject CloudDirectory_BatchAttachPolicy CloudDirectory_BatchDeleteObject CloudDirectory_BatchUpdateLinkAttributes CloudDirectory_BatchAttachToIndex/;
  has AddFacetToObject => (is => 'ro', isa => CloudDirectory_BatchAddFacetToObject);
  has AttachObject => (is => 'ro', isa => CloudDirectory_BatchAttachObject);
  has AttachPolicy => (is => 'ro', isa => CloudDirectory_BatchAttachPolicy);
  has AttachToIndex => (is => 'ro', isa => CloudDirectory_BatchAttachToIndex);
  has AttachTypedLink => (is => 'ro', isa => CloudDirectory_BatchAttachTypedLink);
  has CreateIndex => (is => 'ro', isa => CloudDirectory_BatchCreateIndex);
  has CreateObject => (is => 'ro', isa => CloudDirectory_BatchCreateObject);
  has DeleteObject => (is => 'ro', isa => CloudDirectory_BatchDeleteObject);
  has DetachFromIndex => (is => 'ro', isa => CloudDirectory_BatchDetachFromIndex);
  has DetachObject => (is => 'ro', isa => CloudDirectory_BatchDetachObject);
  has DetachPolicy => (is => 'ro', isa => CloudDirectory_BatchDetachPolicy);
  has DetachTypedLink => (is => 'ro', isa => CloudDirectory_BatchDetachTypedLink);
  has RemoveFacetFromObject => (is => 'ro', isa => CloudDirectory_BatchRemoveFacetFromObject);
  has UpdateLinkAttributes => (is => 'ro', isa => CloudDirectory_BatchUpdateLinkAttributes);
  has UpdateObjectAttributes => (is => 'ro', isa => CloudDirectory_BatchUpdateObjectAttributes);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetachPolicy' => {
                                   'class' => 'Paws::CloudDirectory::BatchDetachPolicy',
                                   'type' => 'CloudDirectory_BatchDetachPolicy'
                                 },
               'CreateIndex' => {
                                  'class' => 'Paws::CloudDirectory::BatchCreateIndex',
                                  'type' => 'CloudDirectory_BatchCreateIndex'
                                },
               'AttachTypedLink' => {
                                      'class' => 'Paws::CloudDirectory::BatchAttachTypedLink',
                                      'type' => 'CloudDirectory_BatchAttachTypedLink'
                                    },
               'DetachTypedLink' => {
                                      'class' => 'Paws::CloudDirectory::BatchDetachTypedLink',
                                      'type' => 'CloudDirectory_BatchDetachTypedLink'
                                    },
               'DetachFromIndex' => {
                                      'class' => 'Paws::CloudDirectory::BatchDetachFromIndex',
                                      'type' => 'CloudDirectory_BatchDetachFromIndex'
                                    },
               'DeleteObject' => {
                                   'class' => 'Paws::CloudDirectory::BatchDeleteObject',
                                   'type' => 'CloudDirectory_BatchDeleteObject'
                                 },
               'AttachPolicy' => {
                                   'class' => 'Paws::CloudDirectory::BatchAttachPolicy',
                                   'type' => 'CloudDirectory_BatchAttachPolicy'
                                 },
               'RemoveFacetFromObject' => {
                                            'class' => 'Paws::CloudDirectory::BatchRemoveFacetFromObject',
                                            'type' => 'CloudDirectory_BatchRemoveFacetFromObject'
                                          },
               'AddFacetToObject' => {
                                       'class' => 'Paws::CloudDirectory::BatchAddFacetToObject',
                                       'type' => 'CloudDirectory_BatchAddFacetToObject'
                                     },
               'DetachObject' => {
                                   'class' => 'Paws::CloudDirectory::BatchDetachObject',
                                   'type' => 'CloudDirectory_BatchDetachObject'
                                 },
               'AttachObject' => {
                                   'class' => 'Paws::CloudDirectory::BatchAttachObject',
                                   'type' => 'CloudDirectory_BatchAttachObject'
                                 },
               'AttachToIndex' => {
                                    'class' => 'Paws::CloudDirectory::BatchAttachToIndex',
                                    'type' => 'CloudDirectory_BatchAttachToIndex'
                                  },
               'UpdateObjectAttributes' => {
                                             'class' => 'Paws::CloudDirectory::BatchUpdateObjectAttributes',
                                             'type' => 'CloudDirectory_BatchUpdateObjectAttributes'
                                           },
               'CreateObject' => {
                                   'class' => 'Paws::CloudDirectory::BatchCreateObject',
                                   'type' => 'CloudDirectory_BatchCreateObject'
                                 },
               'UpdateLinkAttributes' => {
                                           'class' => 'Paws::CloudDirectory::BatchUpdateLinkAttributes',
                                           'type' => 'CloudDirectory_BatchUpdateLinkAttributes'
                                         }
             }
}
;
    return $Params_map;
  }


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

Represents the output of a C<BatchWrite> operation.

=head1 ATTRIBUTES


=head2 AddFacetToObject => CloudDirectory_BatchAddFacetToObject

  A batch operation that adds a facet to an object.


=head2 AttachObject => CloudDirectory_BatchAttachObject

  Attaches an object to a Directory.


=head2 AttachPolicy => CloudDirectory_BatchAttachPolicy

  Attaches a policy object to a regular object. An object can have a
limited number of attached policies.


=head2 AttachToIndex => CloudDirectory_BatchAttachToIndex

  Attaches the specified object to the specified index.


=head2 AttachTypedLink => CloudDirectory_BatchAttachTypedLink

  Attaches a typed link to a specified source and target object. For more
information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 CreateIndex => CloudDirectory_BatchCreateIndex

  Creates an index object. See Indexing and search
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm)
for more information.


=head2 CreateObject => CloudDirectory_BatchCreateObject

  Creates an object.


=head2 DeleteObject => CloudDirectory_BatchDeleteObject

  Deletes an object in a Directory.


=head2 DetachFromIndex => CloudDirectory_BatchDetachFromIndex

  Detaches the specified object from the specified index.


=head2 DetachObject => CloudDirectory_BatchDetachObject

  Detaches an object from a Directory.


=head2 DetachPolicy => CloudDirectory_BatchDetachPolicy

  Detaches a policy from a Directory.


=head2 DetachTypedLink => CloudDirectory_BatchDetachTypedLink

  Detaches a typed link from a specified source and target object. For
more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 RemoveFacetFromObject => CloudDirectory_BatchRemoveFacetFromObject

  A batch operation that removes a facet from an object.


=head2 UpdateLinkAttributes => CloudDirectory_BatchUpdateLinkAttributes

  Updates a given object's attributes.


=head2 UpdateObjectAttributes => CloudDirectory_BatchUpdateObjectAttributes

  Updates a given object's attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

