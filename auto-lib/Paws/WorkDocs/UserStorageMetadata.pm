# Generated from default/object.tt
package Paws::WorkDocs::UserStorageMetadata;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::WorkDocs::Types qw/WorkDocs_StorageRuleType/;
  has StorageRule => (is => 'ro', isa => WorkDocs_StorageRuleType);
  has StorageUtilizedInBytes => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StorageRule' => {
                                  'type' => 'WorkDocs_StorageRuleType',
                                  'class' => 'Paws::WorkDocs::StorageRuleType'
                                },
               'StorageUtilizedInBytes' => {
                                             'type' => 'Int'
                                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UserStorageMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::UserStorageMetadata object:

  $service_obj->Method(Att1 => { StorageRule => $value, ..., StorageUtilizedInBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::UserStorageMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->StorageRule

=head1 DESCRIPTION

Describes the storage for a user.

=head1 ATTRIBUTES


=head2 StorageRule => WorkDocs_StorageRuleType

  The storage for a user.


=head2 StorageUtilizedInBytes => Int

  The amount of storage used, in bytes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

