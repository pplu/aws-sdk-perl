
package Paws::CustomerProfiles::DeleteIntegration;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Uri => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/integrations/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::DeleteIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DeleteIntegration - Arguments for method DeleteIntegration on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIntegration on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method DeleteIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIntegration.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $DeleteIntegrationResponse = $profile->DeleteIntegration(
      DomainName => 'Myname',
      Uri        => 'Mystring1To255',

    );

    # Results:
    my $Message = $DeleteIntegrationResponse->Message;

    # Returns a L<Paws::CustomerProfiles::DeleteIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/DeleteIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> Uri => Str

The URI of the S3 bucket or any other type of data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIntegration in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

