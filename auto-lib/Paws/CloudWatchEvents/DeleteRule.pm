
package Paws::CloudWatchEvents::DeleteRule;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DeleteRule - Arguments for method DeleteRule on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRule on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DeleteRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRule.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    $events->DeleteRule(
      Name  => 'MyRuleName',
      Force => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/DeleteRule>

=head1 ATTRIBUTES


=head2 Force => Bool

If this is a managed rule, created by an AWS service on your behalf,
you must specify C<Force> as C<True> to delete the rule. This parameter
is ignored for rules that are not managed rules. You can check whether
a rule is a managed rule by using C<DescribeRule> or C<ListRules> and
checking the C<ManagedBy> field of the response.



=head2 B<REQUIRED> Name => Str

The name of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRule in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

