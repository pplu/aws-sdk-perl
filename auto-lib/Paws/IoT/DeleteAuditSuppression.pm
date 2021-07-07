
package Paws::IoT::DeleteAuditSuppression;
  use Moose;
  has CheckName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checkName', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Paws::IoT::ResourceIdentifier', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAuditSuppression');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/suppressions/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteAuditSuppressionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteAuditSuppression - Arguments for method DeleteAuditSuppression on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAuditSuppression on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteAuditSuppression.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAuditSuppression.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteAuditSuppressionResponse = $iot->DeleteAuditSuppression(
      CheckName          => 'MyAuditCheckName',
      ResourceIdentifier => {
        Account               => 'MyAwsAccountId',  # min: 12, max: 12; OPTIONAL
        CaCertificateId       => 'MyCertificateId', # min: 64, max: 64; OPTIONAL
        ClientId              => 'MyClientId',      # OPTIONAL
        CognitoIdentityPoolId => 'MyCognitoIdentityPoolId',    # OPTIONAL
        DeviceCertificateId => 'MyCertificateId', # min: 64, max: 64; OPTIONAL
        IamRoleArn          => 'MyRoleArn',       # min: 20, max: 2048; OPTIONAL
        PolicyVersionIdentifier => {
          PolicyName      => 'MyPolicyName',        # min: 1, max: 128; OPTIONAL
          PolicyVersionId => 'MyPolicyVersionId',   # OPTIONAL
        },    # OPTIONAL
        RoleAliasArn => 'MyRoleAliasArn',    # min: 1, max: 2048; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteAuditSuppression>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckName => Str





=head2 B<REQUIRED> ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAuditSuppression in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

