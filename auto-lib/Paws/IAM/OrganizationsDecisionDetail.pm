package Paws::IAM::OrganizationsDecisionDetail;
  use Moose;
  has AllowedByOrganizations => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::OrganizationsDecisionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::OrganizationsDecisionDetail object:

  $service_obj->Method(Att1 => { AllowedByOrganizations => $value, ..., AllowedByOrganizations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::OrganizationsDecisionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedByOrganizations

=head1 DESCRIPTION

Contains information about AWS Organizations's effect on a policy
simulation.

=head1 ATTRIBUTES


=head2 AllowedByOrganizations => Bool

  Specifies whether the simulated operation is allowed by the AWS
Organizations service control policies that impact the simulated user's
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

