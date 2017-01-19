
package Paws::Config::DescribeComplianceByResource;
  use Moose;
  has ComplianceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeComplianceByResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeComplianceByResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeComplianceByResource - Arguments for method DescribeComplianceByResource on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeComplianceByResource on the 
AWS Config service. Use the attributes of this class
as arguments to method DescribeComplianceByResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeComplianceByResource.

As an example:

  $service_obj->DescribeComplianceByResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ComplianceTypes => ArrayRef[Str|Undef]

Filters the results by compliance.

The allowed values are C<COMPLIANT>, C<NON_COMPLIANT>, and
C<INSUFFICIENT_DATA>.



=head2 Limit => Int

The maximum number of evaluation results returned on each page. The
default is 10. You cannot specify a limit greater than 100. If you
specify 0, AWS Config uses the default.



=head2 NextToken => Str

The C<NextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 ResourceId => Str

The ID of the AWS resource for which you want compliance information.
You can specify only one resource ID. If you specify a resource ID, you
must also specify a type for C<ResourceType>.



=head2 ResourceType => Str

The types of AWS resources for which you want compliance information;
for example, C<AWS::EC2::Instance>. For this action, you can specify
that the resource type is an AWS account by specifying
C<AWS::::Account>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeComplianceByResource in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

