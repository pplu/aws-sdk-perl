# Generated from json/callargs_class.tt

package Paws::Config::DescribeConformancePackStatus;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::Config::Types qw//;
  has ConformancePackNames => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeConformancePackStatus');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::DescribeConformancePackStatusResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConformancePackNames' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Limit' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConformancePackStatus - Arguments for method DescribeConformancePackStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConformancePackStatus on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConformancePackStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConformancePackStatus.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConformancePackStatusResponse =
      $config->DescribeConformancePackStatus(
      ConformancePackNames => [
        'MyConformancePackName', ...    # min: 1, max: 256
      ],                                # OPTIONAL
      Limit     => 1,                   # OPTIONAL
      NextToken => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $ConformancePackStatusDetails =
      $DescribeConformancePackStatusResponse->ConformancePackStatusDetails;
    my $NextToken = $DescribeConformancePackStatusResponse->NextToken;

    # Returns a L<Paws::Config::DescribeConformancePackStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConformancePackStatus>

=head1 ATTRIBUTES


=head2 ConformancePackNames => ArrayRef[Str|Undef]

Comma-separated list of conformance pack names.



=head2 Limit => Int

The maximum number of conformance packs returned on each page.



=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConformancePackStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

