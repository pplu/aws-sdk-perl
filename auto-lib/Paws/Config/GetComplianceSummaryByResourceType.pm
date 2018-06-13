
package Paws::Config::GetComplianceSummaryByResourceType;
  use Moose;
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComplianceSummaryByResourceType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetComplianceSummaryByResourceTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceSummaryByResourceType - Arguments for method GetComplianceSummaryByResourceType on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComplianceSummaryByResourceType on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetComplianceSummaryByResourceType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComplianceSummaryByResourceType.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetComplianceSummaryByResourceTypeResponse =
      $config->GetComplianceSummaryByResourceType(
      ResourceTypes => [
        'MyStringWithCharLimit256', ...    # min: 1, max: 256
      ],                                   # OPTIONAL
      );

    # Results:
    my $ComplianceSummariesByResourceType =
      $GetComplianceSummaryByResourceTypeResponse
      ->ComplianceSummariesByResourceType;

 # Returns a L<Paws::Config::GetComplianceSummaryByResourceTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetComplianceSummaryByResourceType>

=head1 ATTRIBUTES


=head2 ResourceTypes => ArrayRef[Str|Undef]

Specify one or more resource types to get the number of resources that
are compliant and the number that are noncompliant for each resource
type.

For this request, you can specify an AWS resource type such as
C<AWS::EC2::Instance>. You can specify that the resource type is an AWS
account by specifying C<AWS::::Account>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComplianceSummaryByResourceType in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

