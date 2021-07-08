
package Paws::IoT::UpdateAuditSuppression;
  use Moose;
  has CheckName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checkName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExpirationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expirationDate');
  has ResourceIdentifier => (is => 'ro', isa => 'Paws::IoT::ResourceIdentifier', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);
  has SuppressIndefinitely => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'suppressIndefinitely');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAuditSuppression');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/suppressions/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateAuditSuppressionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateAuditSuppression - Arguments for method UpdateAuditSuppression on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAuditSuppression on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateAuditSuppression.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAuditSuppression.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateAuditSuppressionResponse = $iot->UpdateAuditSuppression(
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
      Description          => 'MyAuditDescription',     # OPTIONAL
      ExpirationDate       => '1970-01-01T01:00:00',    # OPTIONAL
      SuppressIndefinitely => 1,                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateAuditSuppression>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckName => Str





=head2 Description => Str

The description of the audit suppression.



=head2 ExpirationDate => Str

The expiration date (epoch timestamp in seconds) that you want the
suppression to adhere to.



=head2 B<REQUIRED> ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>





=head2 SuppressIndefinitely => Bool

Indicates whether a suppression should exist indefinitely or not.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAuditSuppression in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

