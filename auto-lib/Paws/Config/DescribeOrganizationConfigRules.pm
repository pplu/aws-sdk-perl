
package Paws::Config::DescribeOrganizationConfigRules;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConfigRuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationConfigRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeOrganizationConfigRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeOrganizationConfigRules - Arguments for method DescribeOrganizationConfigRules on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationConfigRules on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeOrganizationConfigRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationConfigRules.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeOrganizationConfigRulesResponse =
      $config->DescribeOrganizationConfigRules(
      Limit                       => 1,             # OPTIONAL
      NextToken                   => 'MyString',    # OPTIONAL
      OrganizationConfigRuleNames => [
        'MyStringWithCharLimit64', ...              # min: 1, max: 64
      ],                                            # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeOrganizationConfigRulesResponse->NextToken;
    my $OrganizationConfigRules =
      $DescribeOrganizationConfigRulesResponse->OrganizationConfigRules;

    # Returns a L<Paws::Config::DescribeOrganizationConfigRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeOrganizationConfigRules>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of organization config rules returned on each page.
If you do no specify a number, AWS Config uses the default. The default
is 100.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 OrganizationConfigRuleNames => ArrayRef[Str|Undef]

The names of organization config rules for which you want details. If
you do not specify any names, AWS Config returns details for all your
organization config rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationConfigRules in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

