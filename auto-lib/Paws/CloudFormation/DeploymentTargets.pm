package Paws::CloudFormation::DeploymentTargets;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeploymentTargets

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::DeploymentTargets object:

  $service_obj->Method(Att1 => { Accounts => $value, ..., OrganizationalUnitIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::DeploymentTargets object:

  $result = $service_obj->Method(...);
  $result->Att1->Accounts

=head1 DESCRIPTION

[C<Service-managed> permissions] The AWS Organizations accounts to
which StackSets deploys.

For update operations, you can specify either C<Accounts> or
C<OrganizationalUnitIds>. For create and delete operations, specify
C<OrganizationalUnitIds>.

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

  The names of one or more AWS accounts for which you want to deploy
stack set updates.


=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

  The organization root ID or organizational unit (OUs) IDs to which
StackSets deploys.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

