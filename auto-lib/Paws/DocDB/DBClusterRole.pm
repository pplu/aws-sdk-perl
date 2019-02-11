package Paws::DocDB::DBClusterRole;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterRole

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBClusterRole object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBClusterRole object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Describes an AWS Identity and Access Management (IAM) role that is
associated with a DB cluster.

=head1 ATTRIBUTES


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that is associated with
the DB cluster.


=head2 Status => Str

  Describes the state of association between the IAM role and the DB
cluster. The C<Status> property returns one of the following values:

=over

=item *

C<ACTIVE> - The IAM role ARN is associated with the DB cluster and can
be used to access other AWS services on your behalf.

=item *

C<PENDING> - The IAM role ARN is being associated with the DB cluster.

=item *

C<INVALID> - The IAM role ARN is associated with the DB cluster, but
the DB cluster cannot assume the IAM role to access other AWS services
on your behalf.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

