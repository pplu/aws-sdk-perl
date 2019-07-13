
package Paws::Discovery::DescribeExportConfigurations;
  use Moose;
  has ExportIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'exportIds' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DescribeExportConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportConfigurations - Arguments for method DescribeExportConfigurations on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExportConfigurations on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DescribeExportConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExportConfigurations.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DescribeExportConfigurationsResponse =
      $discovery->DescribeExportConfigurations(
      ExportIds  => [ 'MyConfigurationsExportId', ... ],    # OPTIONAL
      MaxResults => 1,                                      # OPTIONAL
      NextToken  => 'MyNextToken',                          # OPTIONAL
      );

    # Results:
    my $ExportsInfo = $DescribeExportConfigurationsResponse->ExportsInfo;
    my $NextToken   = $DescribeExportConfigurationsResponse->NextToken;

    # Returns a L<Paws::Discovery::DescribeExportConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DescribeExportConfigurations>

=head1 ATTRIBUTES


=head2 ExportIds => ArrayRef[Str|Undef]

A list of continuous export ids to search for.



=head2 MaxResults => Int

A number between 1 and 100 specifying the maximum number of continuous
export descriptions returned.



=head2 NextToken => Str

The token from the previous call to describe-export-tasks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExportConfigurations in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

