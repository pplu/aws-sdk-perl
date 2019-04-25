package Paws::RDS::DBInstanceRole;
  use Moose;
  has FeatureName => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBInstanceRole

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBInstanceRole object:

  $service_obj->Method(Att1 => { FeatureName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBInstanceRole object:

  $result = $service_obj->Method(...);
  $result->Att1->FeatureName

=head1 DESCRIPTION

Describes an AWS Identity and Access Management (IAM) role that is
associated with a DB instance.

=head1 ATTRIBUTES


=head2 FeatureName => Str

  The name of the feature associated with the AWS Identity and Access
Management (IAM) role. For the list of supported feature names, see
DBEngineVersion.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that is associated with
the DB instance.


=head2 Status => Str

  Describes the state of association between the IAM role and the DB
instance. The Status property returns one of the following values:

=over

=item *

C<ACTIVE> - the IAM role ARN is associated with the DB instance and can
be used to access other AWS services on your behalf.

=item *

C<PENDING> - the IAM role ARN is being associated with the DB instance.

=item *

C<INVALID> - the IAM role ARN is associated with the DB instance, but
the DB instance is unable to assume the IAM role in order to access
other AWS services on your behalf.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

