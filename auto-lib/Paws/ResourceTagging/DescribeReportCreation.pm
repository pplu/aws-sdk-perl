
package Paws::ResourceTagging::DescribeReportCreation;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReportCreation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::DescribeReportCreationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::DescribeReportCreation - Arguments for method DescribeReportCreation on L<Paws::ResourceTagging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReportCreation on the
L<AWS Resource Groups Tagging API|Paws::ResourceTagging> service. Use the attributes of this class
as arguments to method DescribeReportCreation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReportCreation.

=head1 SYNOPSIS

    my $tagging = Paws->service('ResourceTagging');
    my $DescribeReportCreationOutput = $tagging->DescribeReportCreation();

    # Results:
    my $ErrorMessage = $DescribeReportCreationOutput->ErrorMessage;
    my $S3Location   = $DescribeReportCreationOutput->S3Location;
    my $Status       = $DescribeReportCreationOutput->Status;

    # Returns a L<Paws::ResourceTagging::DescribeReportCreationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tagging/DescribeReportCreation>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReportCreation in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

