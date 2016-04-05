
package Paws::CloudWatchEvents::ListRuleNamesByTarget;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuleNamesByTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListRuleNamesByTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRuleNamesByTarget - Arguments for method ListRuleNamesByTarget on Paws::CloudWatchEvents

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuleNamesByTarget on the 
Amazon CloudWatch Events service. Use the attributes of this class
as arguments to method ListRuleNamesByTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuleNamesByTarget.

As an example:

  $service_obj->ListRuleNamesByTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of results to return.



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.



=head2 B<REQUIRED> TargetArn => Str

The Amazon Resource Name (ARN) of the target resource that you want to
list the rules for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuleNamesByTarget in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

