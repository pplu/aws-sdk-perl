
package Paws::Chime::CreateAppInstanceAdmin;
  use Moose;
  has AppInstanceAdminArn => (is => 'ro', isa => 'Str', required => 1);
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppInstanceAdmin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/admins');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateAppInstanceAdminResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAppInstanceAdmin - Arguments for method CreateAppInstanceAdmin on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppInstanceAdmin on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateAppInstanceAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppInstanceAdmin.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateAppInstanceAdminResponse = $chime->CreateAppInstanceAdmin(
      AppInstanceAdminArn => 'MyChimeArn',
      AppInstanceArn      => 'MyChimeArn',

    );

    # Results:
    my $AppInstanceAdmin = $CreateAppInstanceAdminResponse->AppInstanceAdmin;
    my $AppInstanceArn   = $CreateAppInstanceAdminResponse->AppInstanceArn;

    # Returns a L<Paws::Chime::CreateAppInstanceAdminResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateAppInstanceAdmin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceAdminArn => Str

The ARN of the administrator of the current C<AppInstance>.



=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppInstanceAdmin in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

