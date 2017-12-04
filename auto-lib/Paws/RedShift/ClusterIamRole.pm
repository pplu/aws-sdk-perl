package Paws::RedShift::ClusterIamRole;
  use Moose;
  has ApplyStatus => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterIamRole

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterIamRole object:

  $service_obj->Method(Att1 => { ApplyStatus => $value, ..., IamRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterIamRole object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplyStatus

=head1 DESCRIPTION

An AWS Identity and Access Management (IAM) role that can be used by
the associated Amazon Redshift cluster to access other AWS services.

=head1 ATTRIBUTES


=head2 ApplyStatus => Str

  A value that describes the status of the IAM role's association with an
Amazon Redshift cluster.

The following are possible statuses and descriptions.

=over

=item *

C<in-sync>: The role is available for use by the cluster.

=item *

C<adding>: The role is in the process of being associated with the
cluster.

=item *

C<removing>: The role is in the process of being disassociated with the
cluster.

=back



=head2 IamRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role, for example,
C<arn:aws:iam::123456789012:role/RedshiftCopyUnload>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

