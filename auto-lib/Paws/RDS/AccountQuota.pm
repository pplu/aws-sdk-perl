# Generated from default/object.tt
package Paws::RDS::AccountQuota;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::RDS::Types qw//;
  has AccountQuotaName => (is => 'ro', isa => Str);
  has Max => (is => 'ro', isa => Int);
  has Used => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountQuotaName' => {
                                       'type' => 'Str'
                                     },
               'Max' => {
                          'type' => 'Int'
                        },
               'Used' => {
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

Paws::RDS::AccountQuota

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::AccountQuota object:

  $service_obj->Method(Att1 => { AccountQuotaName => $value, ..., Used => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::AccountQuota object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountQuotaName

=head1 DESCRIPTION

Describes a quota for an AWS account.

The following are account quotas:

=over

=item *

C<AllocatedStorage> - The total allocated storage per account, in GiB.
The used value is the total allocated storage in the account, in GiB.

=item *

C<AuthorizationsPerDBSecurityGroup> - The number of ingress rules per
DB security group. The used value is the highest number of ingress
rules in a DB security group in the account. Other DB security groups
in the account might have a lower number of ingress rules.

=item *

C<CustomEndpointsPerDBCluster> - The number of custom endpoints per DB
cluster. The used value is the highest number of custom endpoints in a
DB clusters in the account. Other DB clusters in the account might have
a lower number of custom endpoints.

=item *

C<DBClusterParameterGroups> - The number of DB cluster parameter groups
per account, excluding default parameter groups. The used value is the
count of nondefault DB cluster parameter groups in the account.

=item *

C<DBClusterRoles> - The number of associated AWS Identity and Access
Management (IAM) roles per DB cluster. The used value is the highest
number of associated IAM roles for a DB cluster in the account. Other
DB clusters in the account might have a lower number of associated IAM
roles.

=item *

C<DBClusters> - The number of DB clusters per account. The used value
is the count of DB clusters in the account.

=item *

C<DBInstanceRoles> - The number of associated IAM roles per DB
instance. The used value is the highest number of associated IAM roles
for a DB instance in the account. Other DB instances in the account
might have a lower number of associated IAM roles.

=item *

C<DBInstances> - The number of DB instances per account. The used value
is the count of the DB instances in the account.

=item *

C<DBParameterGroups> - The number of DB parameter groups per account,
excluding default parameter groups. The used value is the count of
nondefault DB parameter groups in the account.

=item *

C<DBSecurityGroups> - The number of DB security groups (not VPC
security groups) per account, excluding the default security group. The
used value is the count of nondefault DB security groups in the
account.

=item *

C<DBSubnetGroups> - The number of DB subnet groups per account. The
used value is the count of the DB subnet groups in the account.

=item *

C<EventSubscriptions> - The number of event subscriptions per account.
The used value is the count of the event subscriptions in the account.

=item *

C<ManualSnapshots> - The number of manual DB snapshots per account. The
used value is the count of the manual DB snapshots in the account.

=item *

C<OptionGroups> - The number of DB option groups per account, excluding
default option groups. The used value is the count of nondefault DB
option groups in the account.

=item *

C<ReadReplicasPerMaster> - The number of Read Replicas per DB instance.
The used value is the highest number of Read Replicas for a DB instance
in the account. Other DB instances in the account might have a lower
number of Read Replicas.

=item *

C<ReservedDBInstances> - The number of reserved DB instances per
account. The used value is the count of the active reserved DB
instances in the account.

=item *

C<SubnetsPerDBSubnetGroup> - The number of subnets per DB subnet group.
The used value is highest number of subnets for a DB subnet group in
the account. Other DB subnet groups in the account might have a lower
number of subnets.

=back

For more information, see Limits
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html)
in the I<Amazon RDS User Guide> and Limits
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Limits.html)
in the I<Amazon Aurora User Guide>.

=head1 ATTRIBUTES


=head2 AccountQuotaName => Str

  The name of the Amazon RDS quota for this AWS account.


=head2 Max => Int

  The maximum allowed value for the quota.


=head2 Used => Int

  The amount currently used toward the quota maximum.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

