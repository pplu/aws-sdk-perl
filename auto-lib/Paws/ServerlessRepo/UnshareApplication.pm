
package Paws::ServerlessRepo::UnshareApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'organizationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnshareApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/unshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::UnshareApplication - Arguments for method UnshareApplication on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnshareApplication on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method UnshareApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnshareApplication.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    $serverlessrepo->UnshareApplication(
      ApplicationId  => 'My__string',
      OrganizationId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/UnshareApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 B<REQUIRED> OrganizationId => Str

The AWS Organization ID to unshare the application from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnshareApplication in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

