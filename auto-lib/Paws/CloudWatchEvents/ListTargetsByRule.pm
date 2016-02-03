
package Paws::CloudWatchEvents::ListTargetsByRule;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTargetsByRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListTargetsByRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTargetsByRule - Arguments for method ListTargetsByRule on Paws::CloudWatchEvents

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTargetsByRule on the 
Amazon CloudWatch Events service. Use the attributes of this class
as arguments to method ListTargetsByRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTargetsByRule.

As an example:

  $service_obj->ListTargetsByRule(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of results to return.



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.



=head2 B<REQUIRED> Rule => Str

The name of the rule whose targets you want to list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTargetsByRule in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

