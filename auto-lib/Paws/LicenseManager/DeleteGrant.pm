
package Paws::LicenseManager::DeleteGrant;
  use Moose;
  has GrantArn => (is => 'ro', isa => 'Str', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::DeleteGrantResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::DeleteGrant - Arguments for method DeleteGrant on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGrant on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method DeleteGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGrant.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $DeleteGrantResponse = $license -manager->DeleteGrant(
      GrantArn     => 'MyArn',
      Version      => 'MyString',
      StatusReason => 'MyStatusReasonMessage',    # OPTIONAL
    );

    # Results:
    my $GrantArn = $DeleteGrantResponse->GrantArn;
    my $Status   = $DeleteGrantResponse->Status;
    my $Version  = $DeleteGrantResponse->Version;

    # Returns a L<Paws::LicenseManager::DeleteGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/DeleteGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GrantArn => Str

Amazon Resource Name (ARN) of the grant.



=head2 StatusReason => Str





=head2 B<REQUIRED> Version => Str

Current version of the grant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGrant in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

