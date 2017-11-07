package Paws::CodeDeploy::GreenFleetProvisioningOption;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GreenFleetProvisioningOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::GreenFleetProvisioningOption object:

  $service_obj->Method(Att1 => { Action => $value, ..., Action => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::GreenFleetProvisioningOption object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Information about the instances that belong to the replacement
environment in a blue/green deployment.

=head1 ATTRIBUTES


=head2 Action => Str

  The method used to add instances to a replacement environment.

=over

=item *

DISCOVER_EXISTING: Use instances that already exist or will be created
manually.

=item *

COPY_AUTO_SCALING_GROUP: Use settings from a specified Auto Scaling
group to define and create instances in a new Auto Scaling group.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

