
package Paws::Organizations::DisableAWSServiceAccess;
  use Moose;
  has ServicePrincipal => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAWSServiceAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DisableAWSServiceAccess - Arguments for method DisableAWSServiceAccess on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableAWSServiceAccess on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DisableAWSServiceAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableAWSServiceAccess.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->DisableAWSServiceAccess(
      ServicePrincipal => 'MyServicePrincipal',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DisableAWSServiceAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServicePrincipal => Str

The service principal name of the AWS service for which you want to
disable integration with your organization. This is typically in the
form of a URL, such as C< I<service-abbreviation>.amazonaws.com>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableAWSServiceAccess in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

