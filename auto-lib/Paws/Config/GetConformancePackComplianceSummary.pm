# Generated from json/callargs_class.tt

package Paws::Config::GetConformancePackComplianceSummary;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::Config::Types qw//;
  has ConformancePackNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetConformancePackComplianceSummary');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::GetConformancePackComplianceSummaryResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ConformancePackNames' => 1
                  },
  'types' => {
               'Limit' => {
                            'type' => 'Int'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConformancePackNames' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetConformancePackComplianceSummary - Arguments for method GetConformancePackComplianceSummary on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConformancePackComplianceSummary on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetConformancePackComplianceSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConformancePackComplianceSummary.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetConformancePackComplianceSummaryResponse =
      $config->GetConformancePackComplianceSummary(
      ConformancePackNames => [
        'MyConformancePackName', ...    # min: 1, max: 256
      ],
      Limit     => 1,                   # OPTIONAL
      NextToken => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $ConformancePackComplianceSummaryList =
      $GetConformancePackComplianceSummaryResponse
      ->ConformancePackComplianceSummaryList;
    my $NextToken = $GetConformancePackComplianceSummaryResponse->NextToken;

# Returns a L<Paws::Config::GetConformancePackComplianceSummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetConformancePackComplianceSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackNames => ArrayRef[Str|Undef]





=head2 Limit => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConformancePackComplianceSummary in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

