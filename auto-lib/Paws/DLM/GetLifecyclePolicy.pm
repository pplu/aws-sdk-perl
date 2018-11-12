
package Paws::DLM::GetLifecyclePolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLifecyclePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{policyId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DLM::GetLifecyclePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::GetLifecyclePolicy - Arguments for method GetLifecyclePolicy on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLifecyclePolicy on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method GetLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLifecyclePolicy.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $GetLifecyclePolicyResponse = $dlm->GetLifecyclePolicy(
      PolicyId => 'MyPolicyId',

    );

    # Results:
    my $Policy = $GetLifecyclePolicyResponse->Policy;

    # Returns a L<Paws::DLM::GetLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/GetLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The identifier of the lifecycle policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLifecyclePolicy in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

