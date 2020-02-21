package Paws::CloudFormation::AutoDeployment;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has RetainStacksOnAccountRemoval => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::AutoDeployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::AutoDeployment object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., RetainStacksOnAccountRemoval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::AutoDeployment object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

[C<Service-managed> permissions] Describes whether StackSets
automatically deploys to AWS Organizations accounts that are added to a
target organization or organizational unit (OU).

=head1 ATTRIBUTES


=head2 Enabled => Bool

  If set to C<true>, StackSets automatically deploys additional stack
instances to AWS Organizations accounts that are added to a target
organization or organizational unit (OU) in the specified Regions. If
an account is removed from a target organization or OU, StackSets
deletes stack instances from the account in the specified Regions.


=head2 RetainStacksOnAccountRemoval => Bool

  If set to C<true>, stack resources are retained when an account is
removed from a target organization or OU. If set to C<false>, stack
resources are deleted. Specify only if C<Enabled> is set to C<True>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

