
package Paws::Chime::DescribeAppInstanceAdmin;
  use Moose;
  has AppInstanceAdminArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceAdminArn', required => 1);
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppInstanceAdmin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/admins/{appInstanceAdminArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::DescribeAppInstanceAdminResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeAppInstanceAdmin - Arguments for method DescribeAppInstanceAdmin on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppInstanceAdmin on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DescribeAppInstanceAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppInstanceAdmin.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $DescribeAppInstanceAdminResponse = $chime->DescribeAppInstanceAdmin(
      AppInstanceAdminArn => 'MyChimeArn',
      AppInstanceArn      => 'MyChimeArn',

    );

    # Results:
    my $AppInstanceAdmin = $DescribeAppInstanceAdminResponse->AppInstanceAdmin;

    # Returns a L<Paws::Chime::DescribeAppInstanceAdminResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DescribeAppInstanceAdmin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceAdminArn => Str

The ARN of the C<AppInstanceAdmin>.



=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppInstanceAdmin in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

