
package Paws::SSMIncidents::DeleteResourcePolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyId', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteResourcePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::DeleteResourcePolicyOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $DeleteResourcePolicyOutput = $ssm -incidents->DeleteResourcePolicy(
      PolicyId    => 'MyPolicyId',
      ResourceArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The ID of the resource policy you're deleting.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource you're deleting the
policy from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

