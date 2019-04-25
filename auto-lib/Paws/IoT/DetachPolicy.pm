
package Paws::IoT::DetachPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);
  has Target => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/target-policies/{policyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DetachPolicy - Arguments for method DetachPolicy on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachPolicy on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DetachPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachPolicy.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DetachPolicy(
      PolicyName => 'MyPolicyName',
      Target     => 'MyPolicyTarget',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DetachPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The policy to detach.



=head2 B<REQUIRED> Target => Str

The target from which the policy will be detached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachPolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

