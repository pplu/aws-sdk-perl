
package Paws::ES::DescribePackages;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ES::DescribePackagesFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePackages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/packages/describe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribePackagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribePackages - Arguments for method DescribePackages on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePackages on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribePackages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePackages.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribePackagesResponse = $es->DescribePackages(
      Filters => [
        {
          Name => 'PackageID'
          ,    # values: PackageID, PackageName, PackageStatus; OPTIONAL
          Value => [ 'MyDescribePackagesFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken          = $DescribePackagesResponse->NextToken;
    my $PackageDetailsList = $DescribePackagesResponse->PackageDetailsList;

    # Returns a L<Paws::ES::DescribePackagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DescribePackages>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ES::DescribePackagesFilter>]

Only returns packages that match the C<DescribePackagesFilterList>
values.



=head2 MaxResults => Int

Limits results to a maximum number of packages.



=head2 NextToken => Str

Used for pagination. Only necessary if a previous API call includes a
non-null NextToken value. If provided, returns results for the next
page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePackages in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

