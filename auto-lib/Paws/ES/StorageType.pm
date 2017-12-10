package Paws::ES::StorageType;
  use Moose;
  has StorageSubTypeName => (is => 'ro', isa => 'Str');
  has StorageTypeLimits => (is => 'ro', isa => 'ArrayRef[Paws::ES::StorageTypeLimit]');
  has StorageTypeName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::StorageType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::StorageType object:

  $service_obj->Method(Att1 => { StorageSubTypeName => $value, ..., StorageTypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::StorageType object:

  $result = $service_obj->Method(...);
  $result->Att1->StorageSubTypeName

=head1 DESCRIPTION

StorageTypes represents the list of storage related types and their
attributes that are available for given InstanceType.

=head1 ATTRIBUTES


=head2 StorageSubTypeName => Str

  


=head2 StorageTypeLimits => ArrayRef[L<Paws::ES::StorageTypeLimit>]

  List of limits that are applicable for given storage type.


=head2 StorageTypeName => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

