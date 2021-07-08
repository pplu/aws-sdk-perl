
package Paws::Glue::GetResourcePolicy;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetResourcePolicy - Arguments for method GetResourcePolicy on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicy on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicy.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetResourcePolicyResponse = $glue->GetResourcePolicy(
      ResourceArn => 'MyGlueResourceArn',    # OPTIONAL
    );

    # Results:
    my $CreateTime   = $GetResourcePolicyResponse->CreateTime;
    my $PolicyHash   = $GetResourcePolicyResponse->PolicyHash;
    my $PolicyInJson = $GetResourcePolicyResponse->PolicyInJson;
    my $UpdateTime   = $GetResourcePolicyResponse->UpdateTime;

    # Returns a L<Paws::Glue::GetResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetResourcePolicy>

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The ARN of the Glue resource for which to retrieve the resource policy.
If not supplied, the Data Catalog resource policy is returned. Use
C<GetResourcePolicies> to view all existing resource policies. For more
information see Specifying Glue Resource ARNs
(https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicy in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

