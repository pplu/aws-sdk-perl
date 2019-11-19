# Generated from default/object.tt
package Paws::CloudDirectory::BatchReadOperation;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchLookupPolicy CloudDirectory_BatchListObjectPolicies CloudDirectory_BatchGetLinkAttributes CloudDirectory_BatchListIncomingTypedLinks CloudDirectory_BatchListObjectAttributes CloudDirectory_BatchListObjectParents CloudDirectory_BatchListIndex CloudDirectory_BatchGetObjectInformation CloudDirectory_BatchListObjectChildren CloudDirectory_BatchListObjectParentPaths CloudDirectory_BatchGetObjectAttributes CloudDirectory_BatchListOutgoingTypedLinks CloudDirectory_BatchListAttachedIndices CloudDirectory_BatchListPolicyAttachments/;
  has GetLinkAttributes => (is => 'ro', isa => CloudDirectory_BatchGetLinkAttributes);
  has GetObjectAttributes => (is => 'ro', isa => CloudDirectory_BatchGetObjectAttributes);
  has GetObjectInformation => (is => 'ro', isa => CloudDirectory_BatchGetObjectInformation);
  has ListAttachedIndices => (is => 'ro', isa => CloudDirectory_BatchListAttachedIndices);
  has ListIncomingTypedLinks => (is => 'ro', isa => CloudDirectory_BatchListIncomingTypedLinks);
  has ListIndex => (is => 'ro', isa => CloudDirectory_BatchListIndex);
  has ListObjectAttributes => (is => 'ro', isa => CloudDirectory_BatchListObjectAttributes);
  has ListObjectChildren => (is => 'ro', isa => CloudDirectory_BatchListObjectChildren);
  has ListObjectParentPaths => (is => 'ro', isa => CloudDirectory_BatchListObjectParentPaths);
  has ListObjectParents => (is => 'ro', isa => CloudDirectory_BatchListObjectParents);
  has ListObjectPolicies => (is => 'ro', isa => CloudDirectory_BatchListObjectPolicies);
  has ListOutgoingTypedLinks => (is => 'ro', isa => CloudDirectory_BatchListOutgoingTypedLinks);
  has ListPolicyAttachments => (is => 'ro', isa => CloudDirectory_BatchListPolicyAttachments);
  has LookupPolicy => (is => 'ro', isa => CloudDirectory_BatchLookupPolicy);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ListObjectParents' => {
                                        'class' => 'Paws::CloudDirectory::BatchListObjectParents',
                                        'type' => 'CloudDirectory_BatchListObjectParents'
                                      },
               'ListOutgoingTypedLinks' => {
                                             'class' => 'Paws::CloudDirectory::BatchListOutgoingTypedLinks',
                                             'type' => 'CloudDirectory_BatchListOutgoingTypedLinks'
                                           },
               'ListObjectParentPaths' => {
                                            'class' => 'Paws::CloudDirectory::BatchListObjectParentPaths',
                                            'type' => 'CloudDirectory_BatchListObjectParentPaths'
                                          },
               'GetLinkAttributes' => {
                                        'type' => 'CloudDirectory_BatchGetLinkAttributes',
                                        'class' => 'Paws::CloudDirectory::BatchGetLinkAttributes'
                                      },
               'GetObjectAttributes' => {
                                          'type' => 'CloudDirectory_BatchGetObjectAttributes',
                                          'class' => 'Paws::CloudDirectory::BatchGetObjectAttributes'
                                        },
               'ListIncomingTypedLinks' => {
                                             'class' => 'Paws::CloudDirectory::BatchListIncomingTypedLinks',
                                             'type' => 'CloudDirectory_BatchListIncomingTypedLinks'
                                           },
               'GetObjectInformation' => {
                                           'type' => 'CloudDirectory_BatchGetObjectInformation',
                                           'class' => 'Paws::CloudDirectory::BatchGetObjectInformation'
                                         },
               'ListObjectPolicies' => {
                                         'class' => 'Paws::CloudDirectory::BatchListObjectPolicies',
                                         'type' => 'CloudDirectory_BatchListObjectPolicies'
                                       },
               'ListObjectAttributes' => {
                                           'class' => 'Paws::CloudDirectory::BatchListObjectAttributes',
                                           'type' => 'CloudDirectory_BatchListObjectAttributes'
                                         },
               'LookupPolicy' => {
                                   'class' => 'Paws::CloudDirectory::BatchLookupPolicy',
                                   'type' => 'CloudDirectory_BatchLookupPolicy'
                                 },
               'ListAttachedIndices' => {
                                          'class' => 'Paws::CloudDirectory::BatchListAttachedIndices',
                                          'type' => 'CloudDirectory_BatchListAttachedIndices'
                                        },
               'ListObjectChildren' => {
                                         'type' => 'CloudDirectory_BatchListObjectChildren',
                                         'class' => 'Paws::CloudDirectory::BatchListObjectChildren'
                                       },
               'ListPolicyAttachments' => {
                                            'type' => 'CloudDirectory_BatchListPolicyAttachments',
                                            'class' => 'Paws::CloudDirectory::BatchListPolicyAttachments'
                                          },
               'ListIndex' => {
                                'class' => 'Paws::CloudDirectory::BatchListIndex',
                                'type' => 'CloudDirectory_BatchListIndex'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchReadOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchReadOperation object:

  $service_obj->Method(Att1 => { GetLinkAttributes => $value, ..., LookupPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchReadOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->GetLinkAttributes

=head1 DESCRIPTION

Represents the output of a C<BatchRead> operation.

=head1 ATTRIBUTES


=head2 GetLinkAttributes => CloudDirectory_BatchGetLinkAttributes

  Retrieves attributes that are associated with a typed link.


=head2 GetObjectAttributes => CloudDirectory_BatchGetObjectAttributes

  Retrieves attributes within a facet that are associated with an object.


=head2 GetObjectInformation => CloudDirectory_BatchGetObjectInformation

  Retrieves metadata about an object.


=head2 ListAttachedIndices => CloudDirectory_BatchListAttachedIndices

  Lists indices attached to an object.


=head2 ListIncomingTypedLinks => CloudDirectory_BatchListIncomingTypedLinks

  Returns a paginated list of all the incoming TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListIndex => CloudDirectory_BatchListIndex

  Lists objects attached to the specified index.


=head2 ListObjectAttributes => CloudDirectory_BatchListObjectAttributes

  Lists all attributes that are associated with an object.


=head2 ListObjectChildren => CloudDirectory_BatchListObjectChildren

  Returns a paginated list of child objects that are associated with a
given object.


=head2 ListObjectParentPaths => CloudDirectory_BatchListObjectParentPaths

  Retrieves all available parent paths for any object type such as node,
leaf node, policy node, and index node objects. For more information
about objects, see Directory Structure
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).


=head2 ListObjectParents => CloudDirectory_BatchListObjectParents

  


=head2 ListObjectPolicies => CloudDirectory_BatchListObjectPolicies

  Returns policies attached to an object in pagination fashion.


=head2 ListOutgoingTypedLinks => CloudDirectory_BatchListOutgoingTypedLinks

  Returns a paginated list of all the outgoing TypedLinkSpecifier
information for an object. It also supports filtering by typed link
facet and identity attributes. For more information, see Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).


=head2 ListPolicyAttachments => CloudDirectory_BatchListPolicyAttachments

  Returns all of the C<ObjectIdentifiers> to which a given policy is
attached.


=head2 LookupPolicy => CloudDirectory_BatchLookupPolicy

  Lists all policies from the root of the Directory to the object
specified. If there are no policies present, an empty list is returned.
If policies are present, and if some objects don't have the policies
attached, it returns the C<ObjectIdentifier> for such objects. If
policies are present, it returns C<ObjectIdentifier>, C<policyId>, and
C<policyType>. Paths that don't lead to the root from the target object
are ignored. For more information, see Policies
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

