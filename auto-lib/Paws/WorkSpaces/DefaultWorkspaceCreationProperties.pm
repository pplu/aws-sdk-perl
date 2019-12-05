package Paws::WorkSpaces::DefaultWorkspaceCreationProperties;
  use Moose;
  has CustomSecurityGroupId => (is => 'ro', isa => 'Str');
  has DefaultOu => (is => 'ro', isa => 'Str');
  has EnableInternetAccess => (is => 'ro', isa => 'Bool');
  has EnableMaintenanceMode => (is => 'ro', isa => 'Bool');
  has EnableWorkDocs => (is => 'ro', isa => 'Bool');
  has UserEnabledAsLocalAdministrator => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DefaultWorkspaceCreationProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::DefaultWorkspaceCreationProperties object:

  $service_obj->Method(Att1 => { CustomSecurityGroupId => $value, ..., UserEnabledAsLocalAdministrator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::DefaultWorkspaceCreationProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomSecurityGroupId

=head1 DESCRIPTION

Describes the default values that are used to create WorkSpaces. For
more information, see Update Directory Details for Your WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html).

=head1 ATTRIBUTES


=head2 CustomSecurityGroupId => Str

  The identifier of any security groups to apply to WorkSpaces when they
are created.


=head2 DefaultOu => Str

  The organizational unit (OU) in the directory for the WorkSpace machine
accounts.


=head2 EnableInternetAccess => Bool

  Specifies whether to automatically assign an Elastic public IP address
to WorkSpaces in this directory by default. If enabled, the Elastic
public IP address allows outbound internet access from your WorkSpaces
when youE<rsquo>re using an internet gateway in the Amazon VPC in which
your WorkSpaces are located. If you're using a Network Address
Translation (NAT) gateway for outbound internet access from your VPC,
or if your WorkSpaces are in public subnets and you manually assign
them Elastic IP addresses, you should disable this setting. This
setting applies to new WorkSpaces that you launch or to existing
WorkSpaces that you rebuild. For more information, see Configure a VPC
for Amazon WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html).


=head2 EnableMaintenanceMode => Bool

  Specifies whether maintenance mode is enabled for WorkSpaces. For more
information, see WorkSpace Maintenance
(https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html).


=head2 EnableWorkDocs => Bool

  Specifies whether the directory is enabled for Amazon WorkDocs.


=head2 UserEnabledAsLocalAdministrator => Bool

  Specifies whether WorkSpace users are local administrators on their
WorkSpaces.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

