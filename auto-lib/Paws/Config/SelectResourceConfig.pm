# Generated from json/callargs_class.tt

package Paws::Config::SelectResourceConfig;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Config::Types qw//;
  has Expression => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SelectResourceConfig');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::SelectResourceConfigResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Expression' => {
                                 'type' => 'Str'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Limit' => {
                            'type' => 'Int'
                          }
             },
  'IsRequired' => {
                    'Expression' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::SelectResourceConfig - Arguments for method SelectResourceConfig on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SelectResourceConfig on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method SelectResourceConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SelectResourceConfig.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $SelectResourceConfigResponse = $config->SelectResourceConfig(
      Expression => 'MyExpression',
      Limit      => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $SelectResourceConfigResponse->NextToken;
    my $QueryInfo = $SelectResourceConfigResponse->QueryInfo;
    my $Results   = $SelectResourceConfigResponse->Results;

    # Returns a L<Paws::Config::SelectResourceConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/SelectResourceConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expression => Str

The SQL query C<SELECT> command.



=head2 Limit => Int

The maximum number of query results returned on each page.



=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SelectResourceConfig in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

