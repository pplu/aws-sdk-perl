
package Paws::Organizations::RegisterDelegatedAdministrator;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ServicePrincipal => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDelegatedAdministrator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::RegisterDelegatedAdministrator - Arguments for method RegisterDelegatedAdministrator on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDelegatedAdministrator on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method RegisterDelegatedAdministrator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDelegatedAdministrator.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->RegisterDelegatedAdministrator(
      AccountId        => 'MyAccountId',
      ServicePrincipal => 'MyServicePrincipal',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/RegisterDelegatedAdministrator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID number of the member account in the organization to
register as a delegated administrator.



=head2 B<REQUIRED> ServicePrincipal => Str

The service principal of the AWS service for which you want to make the
member account a delegated administrator.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDelegatedAdministrator in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

