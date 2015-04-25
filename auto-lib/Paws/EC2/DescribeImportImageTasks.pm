
package Paws::EC2::DescribeImportImageTasks {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]');
  has ImportTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ImportTaskId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImportImageTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeImportImageTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportImageTasks - Arguments for method DescribeImportImageTasks on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImportImageTasks on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeImportImageTasks.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImportImageTasks.

As an example:

  $service_obj->DescribeImportImageTasks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 Filters => ArrayRef[Paws::EC2::Filter]

  

Filters to be applied on a describe request.










=head2 ImportTaskIds => ArrayRef[Str]

  

A list of ImportImage task IDs to describe.










=head2 MaxResults => Int

  

The maximum number of results in a page.










=head2 NextToken => Str

  

The token to get the next page of paginated describe requests.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImportImageTasks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

