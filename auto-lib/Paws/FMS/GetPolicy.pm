
package Paws::FMS::GetPolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetPolicy - Arguments for method GetPolicy on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPolicy on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPolicy.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetPolicyResponse = $fms->GetPolicy(
      PolicyId => 'MyPolicyId',

    );

    # Results:
    my $Policy    = $GetPolicyResponse->Policy;
    my $PolicyArn = $GetPolicyResponse->PolicyArn;

    # Returns a L<Paws::FMS::GetPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The ID of the AWS Firewall Manager policy that you want the details
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPolicy in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

