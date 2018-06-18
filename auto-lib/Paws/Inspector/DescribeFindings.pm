
package Paws::Inspector::DescribeFindings;
  use Moose;
  has FindingArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingArns' , required => 1);
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFindings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeFindingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeFindings - Arguments for method DescribeFindings on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFindings on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DescribeFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFindings.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Describe findings
    # Describes the findings that are specified by the ARNs of the findings.
    my $DescribeFindingsResponse = $inspector->DescribeFindings(
      {
        'FindingArns' => [
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE/finding/0-HwPnsDm4'
        ]
      }
    );

    # Results:
    my $failedItems = $DescribeFindingsResponse->failedItems;
    my $findings    = $DescribeFindingsResponse->findings;

    # Returns a L<Paws::Inspector::DescribeFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/DescribeFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingArns => ArrayRef[Str|Undef]

The ARN that specifies the finding that you want to describe.



=head2 Locale => Str

The locale into which you want to translate a finding description,
recommendation, and the short description that identifies the finding.

Valid values are: C<"EN_US">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

