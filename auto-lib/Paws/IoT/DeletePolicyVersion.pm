
package Paws::IoT::DeletePolicyVersion;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);
  has PolicyVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicyVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{policyName}/version/{policyVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeletePolicyVersion - Arguments for method DeletePolicyVersion on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePolicyVersion on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeletePolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePolicyVersion.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeletePolicyVersion(
      PolicyName      => 'MyPolicyName',
      PolicyVersionId => 'MyPolicyVersionId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeletePolicyVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the policy.



=head2 B<REQUIRED> PolicyVersionId => Str

The policy version ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePolicyVersion in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

