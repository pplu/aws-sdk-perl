package Paws::WorkDocs::StorageRuleType;
  use Moose;
  has StorageAllocatedInBytes => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::StorageRuleType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::StorageRuleType object:

  $service_obj->Method(Att1 => { StorageAllocatedInBytes => $value, ..., StorageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::StorageRuleType object:

  $result = $service_obj->Method(...);
  $result->Att1->StorageAllocatedInBytes

=head1 DESCRIPTION

Describes the storage for a user.

=head1 ATTRIBUTES


=head2 StorageAllocatedInBytes => Int

  The amount of storage allocated, in bytes.


=head2 StorageType => Str

  The type of storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

