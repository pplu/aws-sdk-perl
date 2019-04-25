
package Paws::IoT::GetPolicyVersion;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);
  has PolicyVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPolicyVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{policyName}/version/{policyVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetPolicyVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPolicyVersion - Arguments for method GetPolicyVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPolicyVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetPolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPolicyVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetPolicyVersionResponse = $iot->GetPolicyVersion(
      PolicyName      => 'MyPolicyName',
      PolicyVersionId => 'MyPolicyVersionId',

    );

    # Results:
    my $CreationDate     = $GetPolicyVersionResponse->CreationDate;
    my $GenerationId     = $GetPolicyVersionResponse->GenerationId;
    my $IsDefaultVersion = $GetPolicyVersionResponse->IsDefaultVersion;
    my $LastModifiedDate = $GetPolicyVersionResponse->LastModifiedDate;
    my $PolicyArn        = $GetPolicyVersionResponse->PolicyArn;
    my $PolicyDocument   = $GetPolicyVersionResponse->PolicyDocument;
    my $PolicyName       = $GetPolicyVersionResponse->PolicyName;
    my $PolicyVersionId  = $GetPolicyVersionResponse->PolicyVersionId;

    # Returns a L<Paws::IoT::GetPolicyVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetPolicyVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the policy.



=head2 B<REQUIRED> PolicyVersionId => Str

The policy version ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPolicyVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

