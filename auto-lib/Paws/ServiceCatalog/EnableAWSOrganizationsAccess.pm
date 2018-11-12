
package Paws::ServiceCatalog::EnableAWSOrganizationsAccess;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAWSOrganizationsAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::EnableAWSOrganizationsAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::EnableAWSOrganizationsAccess - Arguments for method EnableAWSOrganizationsAccess on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableAWSOrganizationsAccess on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method EnableAWSOrganizationsAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableAWSOrganizationsAccess.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $EnableAWSOrganizationsAccessOutput =
      $servicecatalog->EnableAWSOrganizationsAccess();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/EnableAWSOrganizationsAccess>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableAWSOrganizationsAccess in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

