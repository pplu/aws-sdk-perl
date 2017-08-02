
package Paws::Config::GetDiscoveredResourceCounts;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceTypes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDiscoveredResourceCounts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetDiscoveredResourceCountsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetDiscoveredResourceCounts - Arguments for method GetDiscoveredResourceCounts on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDiscoveredResourceCounts on the 
AWS Config service. Use the attributes of this class
as arguments to method GetDiscoveredResourceCounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDiscoveredResourceCounts.

As an example:

  $service_obj->GetDiscoveredResourceCounts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of ResourceCount objects returned on each page. The
default is 100. You cannot specify a limit greater than 100. If you
specify 0, AWS Config uses the default.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 ResourceTypes => ArrayRef[Str|Undef]

The comma-separated list that specifies the resource types that you
want the AWS Config to return. For example, (C<"AWS::EC2::Instance">,
C<"AWS::IAM::User">).

If a value for C<resourceTypes> is not specified, AWS Config returns
all resource types that AWS Config is recording in the region for your
account.

If the configuration recorder is turned off, AWS Config returns an
empty list of ResourceCount objects. If the configuration recorder is
not recording a specific resource type (for example, S3 buckets), that
resource type is not returned in the list of ResourceCount objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDiscoveredResourceCounts in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

