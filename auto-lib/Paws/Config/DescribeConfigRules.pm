
package Paws::Config::DescribeConfigRules;
  use Moose;
  has ConfigRuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRules - Arguments for method DescribeConfigRules on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigRules on the 
AWS Config service. Use the attributes of this class
as arguments to method DescribeConfigRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigRules.

As an example:

  $service_obj->DescribeConfigRules(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConfigRuleNames => ArrayRef[Str|Undef]

The names of the AWS Config rules for which you want details. If you do
not specify any names, AWS Config returns details for all your rules.



=head2 NextToken => Str

The C<NextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigRules in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

