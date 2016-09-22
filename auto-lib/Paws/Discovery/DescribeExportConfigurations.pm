
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

Paws::Discovery::DescribeExportConfigurations - Arguments for method DescribeExportConfigurations on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExportConfigurations on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method DescribeExportConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExportConfigurations.

As an example:

  $service_obj->DescribeExportConfigurations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ExportIds => ArrayRef[Str|Undef]

A unique identifier that you can use to query the export status.



=head2 MaxResults => Int

The maximum number of results that you want to display as a part of the
query.



=head2 NextToken => Str

A token to get the next set of results. For example, if you specified
100 IDs for C<DescribeConfigurationsRequest$configurationIds> but set
C<DescribeExportConfigurationsRequest$maxResults> to 10, you will get
results in a set of 10. Use the token in the query to get the next set
of 10.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExportConfigurations in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

