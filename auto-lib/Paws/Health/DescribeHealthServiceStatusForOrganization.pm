
package Paws::Health::DescribeHealthServiceStatusForOrganization;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHealthServiceStatusForOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeHealthServiceStatusForOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeHealthServiceStatusForOrganization - Arguments for method DescribeHealthServiceStatusForOrganization on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHealthServiceStatusForOrganization on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeHealthServiceStatusForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHealthServiceStatusForOrganization.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeHealthServiceStatusForOrganizationResponse =
      $health->DescribeHealthServiceStatusForOrganization();

    # Results:
    my $HealthServiceAccessStatusForOrganization =
      $DescribeHealthServiceStatusForOrganizationResponse
      ->HealthServiceAccessStatusForOrganization;

# Returns a L<Paws::Health::DescribeHealthServiceStatusForOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeHealthServiceStatusForOrganization>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHealthServiceStatusForOrganization in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

