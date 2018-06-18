
package Paws::StepFunctions::CreateActivity;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateActivity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::CreateActivityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateActivity - Arguments for method CreateActivity on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateActivity on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method CreateActivity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateActivity.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $CreateActivityOutput = $states->CreateActivity(
      Name => 'MyName',

    );

    # Results:
    my $ActivityArn  = $CreateActivityOutput->ActivityArn;
    my $CreationDate = $CreateActivityOutput->CreationDate;

    # Returns a L<Paws::StepFunctions::CreateActivityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/CreateActivity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the activity to create. This name must be unique for your
AWS account and region for 90 days. For more information, see Limits
Related to State Machine Executions
(http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions)
in the I<AWS Step Functions Developer Guide>.

A name must I<not> contain:

=over

=item *

whitespace

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateActivity in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

