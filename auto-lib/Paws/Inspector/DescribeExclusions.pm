
package Paws::Inspector::DescribeExclusions;
  use Moose;
  has ExclusionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'exclusionArns' , required => 1);
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExclusions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::DescribeExclusionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeExclusions - Arguments for method DescribeExclusions on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExclusions on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method DescribeExclusions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExclusions.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    my $DescribeExclusionsResponse = $inspector->DescribeExclusions(
      ExclusionArns => [
        'MyArn', ...    # min: 1, max: 300
      ],
      Locale => 'EN_US',    # OPTIONAL
    );

    # Results:
    my $Exclusions  = $DescribeExclusionsResponse->Exclusions;
    my $FailedItems = $DescribeExclusionsResponse->FailedItems;

    # Returns a L<Paws::Inspector::DescribeExclusionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/DescribeExclusions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusionArns => ArrayRef[Str|Undef]

The list of ARNs that specify the exclusions that you want to describe.



=head2 Locale => Str

The locale into which you want to translate the exclusion's title,
description, and recommendation.

Valid values are: C<"EN_US">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExclusions in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

