
package Paws::Health::DisableHealthServiceAccessForOrganization;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableHealthServiceAccessForOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DisableHealthServiceAccessForOrganization - Arguments for method DisableHealthServiceAccessForOrganization on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableHealthServiceAccessForOrganization on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DisableHealthServiceAccessForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableHealthServiceAccessForOrganization.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    $health->DisableHealthServiceAccessForOrganization();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DisableHealthServiceAccessForOrganization>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableHealthServiceAccessForOrganization in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

