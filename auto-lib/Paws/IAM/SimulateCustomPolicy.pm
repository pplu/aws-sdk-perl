
package Paws::IAM::SimulateCustomPolicy;
  use Moose;
  has ActionNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has ContextEntries => (is => 'ro', isa => 'ArrayRef[Paws::IAM::ContextEntry]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PolicyInputList => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SimulateCustomPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::SimulatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SimulateCustomPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SimulateCustomPolicy - Arguments for method SimulateCustomPolicy on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method SimulateCustomPolicy on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method SimulateCustomPolicy.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to SimulateCustomPolicy.

As an example:

  $service_obj->SimulateCustomPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> ActionNames => ArrayRef[Str]

  

A list of names of API actions to evaluate in the simulation. Each
action is evaluated for each resource. Each action must include the
service identifier, such as C<iam:CreateUser>.










=head2 ContextEntries => ArrayRef[Paws::IAM::ContextEntry]

  

A list of context keys and corresponding values that are used by the
simulation. Whenever a context key is evaluated by a C<Condition>
element in one of the simulated IAM permission policies, the
corresponding value is supplied.










=head2 Marker => Str

  

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response you received to
inform the next call about where to start.










=head2 MaxItems => Int

  

Use this only when paginating results to indicate the maximum number of
items you want in the response. If there are additional items beyond
the maximum you specify, the C<IsTruncated> response element is
C<true>.

This parameter is optional. If you do not include it, it defaults to
100. Note that IAM might return fewer results, even when there are more
results available. If this is the case, the C<IsTruncated> response
element returns C<true> and C<Marker> contains a value to include in
the subsequent call that tells the service where to continue from.










=head2 B<REQUIRED> PolicyInputList => ArrayRef[Str]

  

A list of policy documents to include in the simulation. Each document
is specified as a string containing the complete, valid JSON text of an
IAM policy.










=head2 ResourceArns => ArrayRef[Str]

  

A list of ARNs of AWS resources to include in the simulation. If this
parameter is not provided then the value defaults to C<*> (all
resources). Each API in the C<ActionNames> parameter is evaluated for
each resource in this list. The simulation determines the access result
(allowed or denied) of each combination and reports it in the response.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SimulateCustomPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

