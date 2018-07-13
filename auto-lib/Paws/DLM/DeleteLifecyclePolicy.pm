
package Paws::DLM::DeleteLifecyclePolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLifecyclePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{policyId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DLM::DeleteLifecyclePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::DeleteLifecyclePolicy - Arguments for method DeleteLifecyclePolicy on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLifecyclePolicy on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method DeleteLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLifecyclePolicy.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $DeleteLifecyclePolicyResponse = $dlm->DeleteLifecyclePolicy(
      PolicyId => 'MyPolicyId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/DeleteLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The identifier of the lifecycle policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLifecyclePolicy in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

