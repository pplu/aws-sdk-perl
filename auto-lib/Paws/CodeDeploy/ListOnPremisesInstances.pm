
package Paws::CodeDeploy::ListOnPremisesInstances;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistrationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registrationStatus' );
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'tagFilters' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOnPremisesInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListOnPremisesInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListOnPremisesInstances - Arguments for method ListOnPremisesInstances on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOnPremisesInstances on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListOnPremisesInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOnPremisesInstances.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $ListOnPremisesInstancesOutput = $codedeploy->ListOnPremisesInstances(
      NextToken          => 'MyNextToken',    # OPTIONAL
      RegistrationStatus => 'Registered',     # OPTIONAL
      TagFilters         => [
        {
          Key => 'MyKey',                     # OPTIONAL
          Type =>
            'KEY_ONLY',  # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],                         # OPTIONAL
    );

    # Results:
    my $InstanceNames = $ListOnPremisesInstancesOutput->InstanceNames;
    my $NextToken     = $ListOnPremisesInstancesOutput->NextToken;

    # Returns a L<Paws::CodeDeploy::ListOnPremisesInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ListOnPremisesInstances>

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier returned from the previous list on-premises instances
call. It can be used to return the next set of on-premises instances in
the list.



=head2 RegistrationStatus => Str

The registration status of the on-premises instances:

=over

=item *

Deregistered: Include deregistered on-premises instances in the
resulting list.

=item *

Registered: Include registered on-premises instances in the resulting
list.

=back


Valid values are: C<"Registered">, C<"Deregistered">

=head2 TagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

The on-premises instance tags that are used to restrict the on-premises
instance names returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOnPremisesInstances in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

