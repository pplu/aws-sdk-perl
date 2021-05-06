
package Paws::Config::DescribeRemediationExceptions;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceKeys => (is => 'ro', isa => 'ArrayRef[Paws::Config::RemediationExceptionResourceKey]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRemediationExceptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeRemediationExceptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationExceptions - Arguments for method DescribeRemediationExceptions on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRemediationExceptions on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeRemediationExceptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRemediationExceptions.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeRemediationExceptionsResponse =
      $config->DescribeRemediationExceptions(
      ConfigRuleName => 'MyConfigRuleName',
      Limit          => 1,                    # OPTIONAL
      NextToken      => 'MyString',           # OPTIONAL
      ResourceKeys   => [
        {
          ResourceId =>
            'MyStringWithCharLimit1024',      # min: 1, max: 1024; OPTIONAL
          ResourceType =>
            'MyStringWithCharLimit256',       # min: 1, max: 256; OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRemediationExceptionsResponse->NextToken;
    my $RemediationExceptions =
      $DescribeRemediationExceptionsResponse->RemediationExceptions;

    # Returns a L<Paws::Config::DescribeRemediationExceptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeRemediationExceptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

The name of the AWS Config rule.



=head2 Limit => Int

The maximum number of RemediationExceptionResourceKey returned on each
page. The default is 25. If you specify 0, AWS Config uses the default.



=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.



=head2 ResourceKeys => ArrayRef[L<Paws::Config::RemediationExceptionResourceKey>]

An exception list of resource exception keys to be processed with the
current request. AWS Config adds exception for each resource key. For
example, AWS Config adds 3 exceptions for 3 resource keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRemediationExceptions in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

