
package Paws::Config::DescribeConfigRulesResponse;
  use Moose;
  has ConfigRules => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigRule]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRulesResponse

=head1 ATTRIBUTES

=head2 ConfigRules => ArrayRef[Paws::Config::ConfigRule]

  

The details about your AWS Config rules.









=head2 NextToken => Str

  

The string that you use in a subsequent request to get the next page of
results in a paginated response.











=cut

1;