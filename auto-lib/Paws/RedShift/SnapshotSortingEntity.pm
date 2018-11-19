package Paws::RedShift::SnapshotSortingEntity;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has SortOrder => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SnapshotSortingEntity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::SnapshotSortingEntity object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., SortOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::SnapshotSortingEntity object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

Describes a sorting entity

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attribute => Str

  The category for sorting the snapshots.


=head2 SortOrder => Str

  The order for listing the attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

