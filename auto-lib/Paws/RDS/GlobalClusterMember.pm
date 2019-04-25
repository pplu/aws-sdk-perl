package Paws::RDS::GlobalClusterMember;
  use Moose;
  has DBClusterArn => (is => 'ro', isa => 'Str');
  has IsWriter => (is => 'ro', isa => 'Bool');
  has Readers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::GlobalClusterMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::GlobalClusterMember object:

  $service_obj->Method(Att1 => { DBClusterArn => $value, ..., Readers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::GlobalClusterMember object:

  $result = $service_obj->Method(...);
  $result->Att1->DBClusterArn

=head1 DESCRIPTION

A data structure with information about any primary and secondary
clusters associated with an Aurora global database.

=head1 ATTRIBUTES


=head2 DBClusterArn => Str

  The Amazon Resource Name (ARN) for each Aurora cluster.


=head2 IsWriter => Bool

  Specifies whether the Aurora cluster is the primary cluster (that is,
has read-write capability) for the Aurora global database with which it
is associated.


=head2 Readers => ArrayRef[Str|Undef]

  The Amazon Resource Name (ARN) for each read-only secondary cluster
associated with the Aurora global database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

